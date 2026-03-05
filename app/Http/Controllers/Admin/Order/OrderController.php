<?php

namespace App\Http\Controllers\Admin\Order;

use Illuminate\Support\Facades\Http;
use App\Contracts\Repositories\BusinessSettingRepositoryInterface;
use App\Contracts\Repositories\CustomerRepositoryInterface;
use App\Contracts\Repositories\DeliveryCountryCodeRepositoryInterface;
use App\Contracts\Repositories\DeliveryManTransactionRepositoryInterface;
use App\Contracts\Repositories\DeliveryManWalletRepositoryInterface;
use App\Contracts\Repositories\DeliveryZipCodeRepositoryInterface;
use App\Contracts\Repositories\LoyaltyPointTransactionRepositoryInterface;
use App\Contracts\Repositories\OrderDetailRepositoryInterface;
use App\Contracts\Repositories\OrderExpectedDeliveryHistoryRepositoryInterface;
use App\Contracts\Repositories\OrderRepositoryInterface;
use App\Contracts\Repositories\OrderStatusHistoryRepositoryInterface;
use App\Contracts\Repositories\ShippingAddressRepositoryInterface;
use App\Contracts\Repositories\VendorRepositoryInterface;
use App\Enums\GlobalConstant;
use App\Enums\ViewPaths\Admin\Order;
use App\Enums\WebConfigKey;
use App\Events\OrderStatusEvent;
use App\Exports\OrderExport;
use App\Http\Controllers\BaseController;
use App\Http\Requests\UploadDigitalFileAfterSellRequest;
use App\Repositories\DeliveryManRepository;
use App\Repositories\OrderTransactionRepository;
use App\Repositories\WalletTransactionRepository;
use App\Services\DeliveryCountryCodeService;
use App\Services\DeliveryManTransactionService;
use App\Services\DeliveryManWalletService;
use App\Services\OrderService;
use App\Services\OrderStatusHistoryService;
use App\Traits\CustomerTrait;
use App\Traits\FileManagerTrait;
use App\Traits\PdfGenerator;
use App\Utils\OrderManager;
use Devrabiul\ToastMagic\Facades\ToastMagic;
use Carbon\Carbon;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Facades\Excel;
use App\Services\PathaoService;
use App\Services\RedxService;
use App\Services\SteadfastService;
use Symfony\Component\HttpFoundation\BinaryFileResponse;
use Illuminate\Support\Facades\View as PdfView;

class OrderController extends BaseController
{
    use CustomerTrait;
    use PdfGenerator;
    use FileManagerTrait {
        delete as deleteFile;
        update as updateFile;
    }

    public function __construct(
        private readonly OrderRepositoryInterface                        $orderRepo,
        private readonly CustomerRepositoryInterface                     $customerRepo,
        private readonly VendorRepositoryInterface                       $vendorRepo,
        private readonly BusinessSettingRepositoryInterface              $businessSettingRepo,
        private readonly DeliveryCountryCodeRepositoryInterface          $deliveryCountryCodeRepo,
        private readonly DeliveryZipCodeRepositoryInterface              $deliveryZipCodeRepo,
        private readonly DeliveryManRepository                           $deliveryManRepo,
        private readonly ShippingAddressRepositoryInterface              $shippingAddressRepo,
        private readonly OrderExpectedDeliveryHistoryRepositoryInterface $orderExpectedDeliveryHistoryRepo,
        private readonly OrderDetailRepositoryInterface                  $orderDetailRepo,
        private readonly WalletTransactionRepository                     $walletTransactionRepo,
        private readonly DeliveryManWalletRepositoryInterface            $deliveryManWalletRepo,
        private readonly DeliveryManTransactionRepositoryInterface       $deliveryManTransactionRepo,
        private readonly OrderStatusHistoryRepositoryInterface           $orderStatusHistoryRepo,
        private readonly OrderTransactionRepository                      $orderTransactionRepo,
        private readonly LoyaltyPointTransactionRepositoryInterface      $loyaltyPointTransactionRepo,
    )
    {
    }

    /**
     * @param Request|null $request
     * @param string $type
     * @return View|Collection|LengthAwarePaginator|callable|RedirectResponse|JsonResponse|null Index function is the starting point of a controller
     * Index function is the starting point of a controller
     */
    public function index(Request|null $request, $type = 'all'): View|Collection|LengthAwarePaginator|null|callable|RedirectResponse|JsonResponse
    {
        return $this->getListView(request: $request, status: $type);
    }

    public function getListView(object $request, string $status): View|JsonResponse
    {
        $searchValue = $request['searchValue'];

        $filter = $request['filter'];
        $from = $request['from'];
        $to = $request['to'];

        $this->orderRepo->updateWhere(params: ['checked' => 0], data: ['checked' => 1]);

        $vendorId = $request['seller_id'] == '0' ? 1 : $request['seller_id'];
        if ($request['seller_id'] == null) {
            $vendorIs = 'all';
        } elseif ($request['seller_id'] == 'all') {
            $vendorIs = $request['seller_id'];
        } elseif ($request['seller_id'] == '0') {
            $vendorIs = 'admin';
        } else {
            $vendorIs = 'seller';
        }

        $dateType = $request['date_type'];
        $filters = [
            'order_status' => $status,
            'filter' => $request['filter'] ?? 'all',
            'date_type' => $dateType,
            'from' => $request['from'],
            'to' => $request['to'],
            'delivery_man_id' => $request['delivery_man_id'],
            'customer_id' => $request['customer_id'],
            'seller_id' => $vendorId,
            'seller_is' => $vendorIs,
        ];

        $orders = $this->orderRepo->getListWhere(orderBy: ['id' => 'desc'], searchValue: $request['searchValue'], filters: $filters, relations: ['customer', 'seller.shop'], dataLimit: getWebConfig(name: WebConfigKey::PAGINATION_LIMIT));
        $sellers = $this->vendorRepo->getByStatusExcept(status: 'pending', relations: ['shop']);

        $customer = "all";
        if (isset($request['customer_id']) && $request['customer_id'] != 'all' && !is_null($request->customer_id) && $request->has('customer_id')) {
            $customer = $this->customerRepo->getFirstWhere(params: ['id' => $request['customer_id']]);
        }

        $vendorId = $request['seller_id'];
        $customerId = $request['customer_id'];

        if (request()->ajax()) {
            return response()->json([
                'orders' => $orders
            ]);
        }

        return view(Order::LIST[VIEW], compact(
            'orders',
            'searchValue',
            'from', 'to', 'status',
            'filter',
            'sellers',
            'customer',
            'vendorId',
            'customerId',
            'dateType',
        ));
    }

    public function exportList(Request $request, $status): BinaryFileResponse|RedirectResponse
    {
        $vendorId = $request['seller_id'] == '0' ? 1 : $request['seller_id'];
        if ($request['seller_id'] == null) {
            $vendorIs = 'all';
        } elseif ($request['seller_id'] == 'all') {
            $vendorIs = $request['seller_id'];
        } elseif ($request['seller_id'] == '0') {
            $vendorIs = 'admin';
        } else {
            $vendorIs = 'seller';
        }

        $filters = [
            'order_status' => $status,
            'filter' => $request['filter'] ?? 'all',
            'date_type' => $request['date_type'],
            'from' => $request['from'],
            'to' => $request['to'],
            'delivery_man_id' => $request['delivery_man_id'],
            'customer_id' => $request['customer_id'],
            'seller_id' => $vendorId,
            'seller_is' => $vendorIs,
        ];

        $orders = $this->orderRepo->getListWhere(orderBy: ['id' => 'desc'], searchValue: $request['searchValue'], filters: $filters, relations: ['customer', 'seller.shop'], dataLimit: 'all');

        /** order status count  */
        $status_array = [
            'pending' => 0,
            'confirmed' => 0,
            'processing' => 0,
            'out_for_delivery' => 0,
            'delivered' => 0,
            'returned' => 0,
            'failed' => 0,
            'canceled' => 0,
        ];
        $orders?->map(function ($order) use (&$status_array) { // Pass by reference using &
            if (isset($status_array[$order->order_status])) {
                $status_array[$order->order_status]++;
            }
            $order?->orderDetails?->map(function ($details) use ($order) {
                $order['total_qty'] += $details->qty;
                $order['total_price'] += $details->qty * $details->price + ($details->tax_model == 'include' ? $details->qty * $details->tax : 0);
                $order['total_discount'] += $details->discount;
                $order['total_tax'] += $details->tax_model == 'exclude' ? $details->tax : 0;
            });

        });
        /** order status count  */

        /** date */
        $date_type = $request->date_type ?? '';
        $from = match ($date_type) {
            'this_year' => date('Y-01-01'),
            'this_month' => date('Y-m-01'),
            'this_week' => Carbon::now()->subDays(7)->startOfWeek()->format('Y-m-d'),
            default => $request['from'] ?? '',
        };
        $to = match ($date_type) {
            'this_year' => date('Y-12-31'),
            'this_month' => date('Y-m-t'),
            'this_week' => Carbon::now()->startOfWeek()->format('Y-m-d'),
            default => $request['to'] ?? '',
        };
        /** end  */
        $seller = [];
        if ($request['seller_id'] != 'all' && $request->has('seller_id') && $request->seller_id != 0) {
            $seller = $this->vendorRepo->getFirstWhere(['id' => $request['seller_id']]);
        }
        $customer = [];
        if ($request['customer_id'] != 'all' && $request->has('customer_id')) {
            $customer = $this->customerRepo->getFirstWhere(['id' => $request['customer_id']]);
        }

        $data = [
            'data-from' => 'admin',
            'orders' => $orders,
            'order_status' => $status,
            'seller' => $seller,
            'customer' => $customer,
            'status_array' => $status_array,
            'searchValue' => $request['searchValue'],
            'order_type' => $request['filter'] ?? 'all',
            'from' => $from,
            'to' => $to,
            'date_type' => $date_type,
            'defaultCurrencyCode' => getCurrencyCode(),
        ];
        return Excel::download(new OrderExport($data), 'Orders.xlsx');
    }







        public function getView(string|int $id, DeliveryCountryCodeService $service, OrderService $orderService): View|RedirectResponse
        {
            $countryRestrictStatus = getWebConfig(name: 'delivery_country_restriction');
            $zipRestrictStatus = getWebConfig(name: 'delivery_zip_code_area_restriction');
            $deliveryCountry = $this->deliveryCountryCodeRepo->getList(dataLimit: 'all');
            $countries = $countryRestrictStatus ? $service->getDeliveryCountryArray(deliveryCountryCodes: $deliveryCountry) : GlobalConstant::COUNTRIES;
            $zipCodes = $zipRestrictStatus ? $this->deliveryZipCodeRepo->getList(dataLimit: 'all') : 0;
            $companyName = getWebConfig(name: 'company_name');
            $companyWebLogo = getWebConfig(name: 'company_web_logo');
            $order = $this->orderRepo->getFirstWhere(params: ['id' => $id], relations: ['details.productAllStatus', 'verificationImages', 'shipping', 'seller.shop', 'offlinePayments', 'deliveryMan']);

            if ($order) {
                $physicalProduct = false;
                if (isset($order->details)) {
                    foreach ($order->details as $orderDetail) {
                        $orderDetailProduct = json_decode($orderDetail?->product_details, true);
                        if (isset($orderDetail?->product?->product_type) && $orderDetail?->product?->product_type == 'physical') {
                            $physicalProduct = true;
                        } else if ($orderDetailProduct && isset($orderDetailProduct['product_type']) && $orderDetailProduct['product_type'] == 'physical') {
                            $physicalProduct = true;
                        }
                    }
                }

                $whereNotIn = [
                    'order_group_id' => ['def-order-group'],
                    'id' => [$order['id']],
                ];
                $linkedOrders = $this->orderRepo->getListWhereNotIn(filters: ['order_group_id' => $order['order_group_id']], whereNotIn: $whereNotIn, dataLimit: 'all');
                $totalDelivered = $this->orderRepo->getListWhere(filters: ['seller_id' => $order['seller_id'], 'order_status' => 'delivered', 'order_type' => 'default_type'], dataLimit: 'all')->count();
                $shippingMethod = getWebConfig('shipping_method');

                $sellerId = 0;
                if ($order['seller_is'] == 'seller' && $shippingMethod == 'sellerwise_shipping') {
                    $sellerId = $order['seller_id'];
                }
                $filters = [
                    'is_active' => 1,
                    'seller_id' => $sellerId,
                ];
                $deliveryMen = $this->deliveryManRepo->getListWhere(filters: $filters, dataLimit: 'all');
                $isOrderOnlyDigital = $orderService->getCheckIsOrderOnlyDigital(order: $order);
                
                
                
                
                
                
if ($order['order_type'] == 'default_type') {

    $shippingAddress = $order['shipping_address_data'] ?? null;
    $rawPhone = $shippingAddress->phone ?? '';
    $phoneNumber = preg_replace('/[^0-9]/', '', $rawPhone);

    if (str_starts_with($phoneNumber, '880') && strlen($phoneNumber) === 13) {
        $phoneNumber = '0' . substr($phoneNumber, 3);
    }

    $courierData = null; // default null

    if (strlen($phoneNumber) === 11 && str_starts_with($phoneNumber, '01')) {

        $bdcourier = getWebConfig('bdcourier');
        $apiKey = trim($bdcourier['api_key']);

        try {
            $response = Http::timeout(15)
                ->retry(1, 500)
                ->withHeaders([
                    'Authorization' => $apiKey,
                    'Content-Type' => 'application/json',
                ])
                ->post('https://bdcourier.com/api/courier-check', [
                    'phone' => $phoneNumber,
                ]);

            if ($response->successful()) {
                $courierData = $response->json()['courierData'] ?? null;
            } else {
                logger()->error('BDCourier API Failed', [
                    'status' => $response->status(),
                    'body' => $response->body(),
                    'phone' => $phoneNumber
                ]);
            }

        } catch (\Illuminate\Http\Client\ConnectionException $e) {
            // Timeout
            logger()->error('BDCourier Timeout / Exception', [
                'error' => $e->getMessage(),
                'phone' => $phoneNumber,
            ]);
        } catch (\Throwable $e) {
            logger()->error('BDCourier Other Exception', [
                'error' => $e->getMessage(),
                'phone' => $phoneNumber,
            ]);
        }
    }

    // Prepare safe Blade variables
    $courierSummary = $courierData['summary'] ?? [
        'total_parcel'=>0,
        'success_parcel'=>0,
        'cancelled_parcel'=>0,
        'success_ratio'=>0
    ];

    $courierList = [];
    if ($courierData) {
        foreach ($courierData as $key => $courier) {
            if ($key === 'summary') continue;
            $courierList[] = $courier;
        }
    }

    $orderCount = $this->orderRepo->getListWhereCount(filters: ['customer_id' => $order['customer_id']]);

    return view(Order::VIEW[VIEW], compact(
        'order', 'linkedOrders', 'deliveryMen', 'totalDelivered',
        'companyName', 'companyWebLogo', 'physicalProduct',
        'countryRestrictStatus', 'zipRestrictStatus',
        'countries', 'zipCodes', 'orderCount', 'isOrderOnlyDigital',
        'courierSummary', 'courierList'
    ));
}  else {
                    $orderCount = $this->orderRepo->getListWhereCount(filters: ['customer_id' => $order['customer_id'], 'order_type' => 'POS']);
                    return view(Order::VIEW_POS[VIEW], compact('order', 'companyName', 'companyWebLogo', 'orderCount'));
                }
            } else {
                ToastMagic::error(translate('Order_not_found'));
                return back();
            }
        }



 public function generateInvoice($id)
{
    $companyPhone = getWebConfig('company_phone');
    $companyEmail = getWebConfig('company_email');
    $companyName = getWebConfig('company_name');
    $companyWebLogo = getWebConfig('company_web_logo');

    $order = $this->orderRepo->getFirstWhere(
        ['id' => $id],
        ['seller', 'shipping', 'details']
    );

    $vendor = $this->vendorRepo->getFirstWhere([
        'id' => $order['details']->first()->seller_id
    ]);

    $invoiceSettings = getWebConfig('invoice_settings');

    return view('admin-views.order.invoice', compact(
        'order',
        'vendor',
        'companyPhone',
        'companyEmail',
        'companyName',
        'companyWebLogo',
        'invoiceSettings'
    ));
}







    public function updateStatus(
        Request                       $request,
        DeliveryManTransactionService $deliveryManTransactionService,
        DeliveryManWalletService      $deliveryManWalletService,
        OrderStatusHistoryService     $orderStatusHistoryService,
    ): JsonResponse
    {
        $order = $this->orderRepo->getFirstWhere(params: ['id' => $request['id']], relations: ['customer', 'seller.shop', 'deliveryMan']);

        if (!$order['is_guest'] && !isset($order['customer'])) {
            return response()->json(['customer_status' => 0], 200);
        }
        $this->orderRepo->updateStockOnOrderStatusChange($request['id'], $request['order_status']);
        $this->orderRepo->update(id: $request['id'], data: ['order_status' => $request['order_status']]);
        if ($request['order_status'] == 'delivered') {
            $this->orderRepo->update(id: $request['id'], data: ['payment_status' => 'paid', 'is_pause' => 0]);
            $this->orderDetailRepo->updateWhere(params: ['order_id' => $order['id']], data: ['delivery_status' => $request['order_status'], 'payment_status' => 'paid']);
        }
        event(new OrderStatusEvent(key: $request['order_status'], type: 'customer', order: $order));
        if ($request['order_status'] == 'canceled') {
            event(new OrderStatusEvent(key: 'canceled', type: 'delivery_man', order: $order));
        }
        if ($order['seller_is'] == 'seller') {
            if ($request['order_status'] == 'canceled') {
                event(new OrderStatusEvent(key: 'canceled', type: 'seller', order: $order));
            } elseif ($request['order_status'] == 'delivered') {
                event(new OrderStatusEvent(key: 'delivered', type: 'seller', order: $order));
            }
        }

        $loyaltyPointStatus = getWebConfig(name: 'loyalty_point_status');

        if ($loyaltyPointStatus == 1 && !$order['is_guest'] && $request['order_status'] == 'delivered') {
            $this->loyaltyPointTransactionRepo->addLoyaltyPointTransaction(userId: $order['customer_id'], reference: $order['id'], amount: usdToDefaultCurrency(amount: $order['order_amount'] - $order['shipping_cost']), transactionType: 'order_place');
        }

        OrderManager::generateReferBonusForFirstOrder(orderId: $order['id']);

        if ($order['delivery_man_id'] && $request->order_status == 'delivered') {
            $deliverymanWallet = $this->deliveryManWalletRepo->getFirstWhere(params: ['delivery_man_id' => $order['delivery_man_id']]);
            $cashInHand = $order['payment_method'] == 'cash_on_delivery' ? $order['order_amount'] : 0;

            if (empty($deliverymanWallet)) {
                $deliverymanWalletData = $deliveryManWalletService->getDeliveryManData(id: $order['delivery_man_id'], deliverymanCharge: $order['deliveryman_charge'], cashInHand: $cashInHand);
                $this->deliveryManWalletRepo->add(data: $deliverymanWalletData);
            } else {
                $deliverymanWalletData = [
                    'current_balance' => $deliverymanWallet['current_balance'] + $order['deliveryman_charge'] ?? 0,
                    'cash_in_hand' => $deliverymanWallet['cash_in_hand'] + $cashInHand ?? 0,
                ];
                $this->deliveryManWalletRepo->updateWhere(params: ['delivery_man_id' => $order['delivery_man_id']], data: $deliverymanWalletData);
            }
            if ($order['deliveryman_charge'] && $request['order_status'] == 'delivered') {
                $deliveryManTransactionData = $deliveryManTransactionService->getDeliveryManTransactionData(amount: $order['deliveryman_charge'], addedBy: 'admin', id: $order['delivery_man_id'], transactionType: 'deliveryman_charge');
                $this->deliveryManTransactionRepo->add($deliveryManTransactionData);
            }
        }

        $orderStatusHistoryData = $orderStatusHistoryService->getOrderHistoryData(orderId: $request['id'], userId: 0, userType: 'admin', status: $request['order_status']);
        $this->orderStatusHistoryRepo->add($orderStatusHistoryData);

        $transaction = $this->orderTransactionRepo->getFirstWhere(params: ['order_id' => $order['id']]);
        if (isset($transaction) && $transaction['status'] == 'disburse') {
            return response()->json($request['order_status']);
        }
        if ($request['order_status'] == 'delivered' && $order['seller_id'] != null) {
            $this->orderRepo->manageWalletOnOrderStatusChange(order: $order, receivedBy: 'admin');
        }
        return response()->json($request['order_status']);
    }

    public function updateAddress(Request $request): RedirectResponse
    {
        $order = $this->orderRepo->getFirstWhere(params: ['id' => $request['order_id']], relations: ['seller.shop', 'deliveryMan']);
        $shippingAddressData = json_decode(json_encode($order['shipping_address_data']), true);
        $billingAddressData = json_decode(json_encode($order['billing_address_data']), true);
        $commonAddressData = [
            'contact_person_name' => $request['name'],
            'phone' => $request['phone_number'],
            'country' => $request['country'],
            'city' => $request['city'],
            'zip' => $request['zip'],
            'address' => $request['address'],
            'latitude' => $request['latitude'],
            'longitude' => $request['longitude'],
            'updated_at' => now(),
        ];

        if ($request['address_type'] == 'shipping') {
            $shippingAddressData = array_merge($shippingAddressData, $commonAddressData);
        } elseif ($request['address_type'] == 'billing') {
            $billingAddressData = array_merge($billingAddressData, $commonAddressData);
        }

        $updateData = [];
        if ($request['address_type'] == 'shipping') {
            $updateData['shipping_address_data'] = json_encode($shippingAddressData);
        } elseif ($request['address_type'] == 'billing') {
            $updateData['billing_address_data'] = json_encode($billingAddressData);
        }

        if (!empty($updateData)) {
            $this->orderRepo->update(id: $request['order_id'], data: $updateData);
        }

        if ($order->seller_is == 'seller') {
            OrderStatusEvent::dispatch('order_edit_message', 'seller', $order);
        }

        if ($order->delivery_type == 'self_delivery' && $order->delivery_man_id) {
            OrderStatusEvent::dispatch('order_edit_message', 'delivery_man', $order);
        }

        ToastMagic::success(translate('successfully_updated'));
        return back();
    }











    public function updateDeliverInfo(Request $request): RedirectResponse
{
    $updateData = [
        'delivery_type' => 'third_party_delivery',
        'delivery_service_name' => $request->delivery_service_name,
        'third_party_delivery_tracking_id' => null,
        'delivery_man_id' => null,
        'deliveryman_charge' => 0,
        'expected_delivery_date' => null,
    ];

    if ($request->delivery_service_name === 'pathao') {
    $trackingId = $this->pathao($request);
    $updateData['third_party_delivery_tracking_id'] = $trackingId;
}


    if ($request->delivery_service_name === 'steadfast') {
        $trackingId = $this->steadfast($request);
        $this->steadfast($request);
        $updateData['third_party_delivery_tracking_id'] = $trackingId;
    }

    if ($request->delivery_service_name === 'redx') {
        $trackingId = $this->redx($request);
        $updateData['third_party_delivery_tracking_id'] = $trackingId;
    }

    $this->orderRepo->update(
        id: $request->order_id,
        data: $updateData
    );

    ToastMagic::success(translate('updated_successfully'));
    return back();
}




private function pathao(Request $request): string
{
    $order = $this->orderRepo->getFirstWhere(['id' => $request->order_id]);
    $shippingAddress = $order['shipping_address_data'] ?? null;

    if (!$shippingAddress) {
        throw new \Exception('Shipping address not found for this order.');
    }

    $Name = $shippingAddress->contact_person_name ?? '';
    $Address = $shippingAddress->address ?? '';
    $phone = preg_replace('/[^0-9]/', '', $shippingAddress->phone ?? '');
    if (str_starts_with($phone, '880')) {
        $phone = '0' . substr($phone, 3);
    } elseif (!str_starts_with($phone, '0')) {
        $phone = '0' . $phone;
    }

    $totalPrice = $order->order_amount;

    $pathao = getWebConfig('pathao');

    $payload = [
        'store_id'            => $pathao['store_id'],
        'merchant_order_id'   => (string)$order->id,
        'recipient_name'      => $Name,
        'recipient_phone'     => $phone,
        'recipient_address'   => $Address,
        'delivery_type'       => 48,
        'item_type'           => 2,
        'special_instruction' => $order->note ?? '',
        'item_quantity'       => 1,
        'item_weight'         => 0.5,
        'item_description'    => 'Order #' . $order->id,
        'amount_to_collect'   => (int)$totalPrice,
    ];

    $response = app(PathaoService::class)->createOrder($payload);

    if (!$response->successful()) {
        throw new \Exception(
            $response->json('message') ?? 'Pathao order creation failed'
        );
    }

    Log::info('Pathao Response', $response->json());

    $trackingId = $response->json('data.merchant_order_id') 
                  ?? $response->json('merchant_order_id');

    if (!$trackingId) {
        throw new \Exception('Pathao API did not return a tracking ID.');
    }

    ToastMagic::success(translate('The_order_has_been_placed_on_pathao_successfully'));

    return (string) $trackingId;
}






   private function steadfast(Request $request): string
{
    $order = $this->orderRepo->getFirstWhere(['id' => $request->order_id]);
    $shippingAddress = $order['shipping_address_data'];

    $phone = preg_replace('/[^0-9]/', '', $shippingAddress->phone);
    if (str_starts_with($phone, '880')) {
        $phone = '0' . substr($phone, 3);
    } elseif (!str_starts_with($phone, '0')) {
        $phone = '0' . $phone;
    }

    $payload = [
        'invoice'           => (string) $order->id,
        'recipient_name'    => $shippingAddress->contact_person_name,
        'recipient_phone'   => $phone,
        'recipient_address' => $shippingAddress->address,
        'cod_amount'        => (int) ($order->order_amount),
        'note'              => $order->note ?? '',
        'item_description'  => 'Order #' . $order->id,
        'delivery_type'     => 0,
    ];

    $response = app(SteadfastService::class)->createOrder($payload);

    // Extract tracking code from API response
    $trackingId = $response['consignment']['tracking_code'] ?? null;

    if (!$trackingId) {
        throw new \Exception('Failed to get Steadfast tracking ID');
    }

    ToastMagic::success(translate('The_order_has_been_placed_on_Steadfast_successfully'));

    // Return the tracking ID instead of redirect
    return $trackingId;
}




   private function redx(Request $request): string
{
    $order = $this->orderRepo->getFirstWhere(['id' => $request->order_id]);
    $shippingAddress = $order['shipping_address_data'];
    $phone = preg_replace('/[^0-9]/', '', $shippingAddress->phone);
    if (str_starts_with($phone, '880')) {
        $phone = '0' . substr($phone, 3);
    }

    $payload = [
        'customer_name'          => $shippingAddress->contact_person_name,
        'customer_phone'         => $phone,
        'delivery_area'          => $shippingAddress->city,
        'delivery_area_id'       => 1,
        'customer_address'       => $shippingAddress->address,
        'merchant_invoice_id'    => (string) $order->id,
        'cash_collection_amount' => (string) $order->order_amount,
        'parcel_weight'          => '0.5',
        'instruction'            => $order->note ?? '',
        'value'                  => (int) $order->order_amount,
        'parcel_details_json'    => [
            [
                'name'     => 'Order #' . $order->id,
                'category' => 'General',
                'value'    => (int) $order->order_amount,
            ],
        ],
    ];

    $response = app(RedxService::class)->createParcel($payload);

     if (!$response->successful()) {
        throw new \Exception(
            $response->json('message') ?? 'Redx order creation failed'
        );
    }

    ToastMagic::success(translate('The_order_has_been_placed_on_redx_successfully'));
    return $response->json('tracking_id');
}








    public function addDeliveryMan(string|int $order_id, string|int $delivery_man_id): JsonResponse
    {
        if ($delivery_man_id == 0) {
            return response()->json([], 401);
        }

        $orderData = $this->orderRepo->getFirstWhere(params: ['id' => $order_id]);
        $order = [
            'seller_is' => $orderData->seller_is,
            'delivery_man_id' => $delivery_man_id,
            'delivery_type' => 'self_delivery',
            'delivery_service_name' => null,
            'third_party_delivery_tracking_id' => null,
        ];
        $this->orderRepo->update(id: $order_id, data: $order);

        $order = $this->orderRepo->getFirstWhere(params: ['id' => $order_id], relations: ['seller.shop', 'deliveryMan']);

        event(new OrderStatusEvent(key: 'new_order_assigned_message', type: 'delivery_man', order: $order));

        /** For Seller Product Send Notification */
        if ($order['seller_is'] == 'seller') {
            event(new OrderStatusEvent(key: 'delivery_man_assign_by_admin_message', type: 'seller', order: $order));
        }
        /** end */

        return response()->json(['status' => true], 200);
    }

    public function updateAmountDate(Request $request): JsonResponse
    {
        $userId = 0;
        $status = $this->orderRepo->updateAmountDate(request: $request, userId: $userId, userType: 'admin');
        $order = $this->orderRepo->getFirstWhere(params: ['id' => $request['order_id']], relations: ['customer', 'deliveryMan']);

        $fieldName = $request['field_name'];
        $message = '';
        if ($fieldName == 'expected_delivery_date') {
            OrderStatusEvent::dispatch('expected_delivery_date', 'delivery_man', $order);
            $message = translate("expected_delivery_date_added_successfully");

        } elseif ($fieldName == 'deliveryman_charge') {
            OrderStatusEvent::dispatch('delivery_man_charge', 'delivery_man', $order);
            $message = translate("deliveryman_charge_added_successfully");
        }

        return response()->json(['status' => $status, 'message' => $message], $status ? 200 : 403);
    }

    public function getCustomers(Request $request): JsonResponse
    {
        $allCustomer = ['id' => 'all', 'text' => 'All customer'];
        $customers = $this->customerRepo->getCustomerNameList(request: $request)->toArray();
        array_unshift($customers, $allCustomer);

        return response()->json($customers);
    }

    public function updatePaymentStatus(Request $request): JsonResponse
    {
        $order = $this->orderRepo->getFirstWhere(params: ['id' => $request['id']]);

        if ($order['is_guest'] == '0' && !isset($order['customer'])) {
            return response()->json(['customer_status' => 0], 200);
        }
        $this->orderRepo->update(id: $request['id'], data: ['payment_status' => $request['payment_status']]);
        return response()->json($request['payment_status']);
    }

    public function filterInHouseOrder(): RedirectResponse
    {
        if (session()->has('show_inhouse_orders') && session('show_inhouse_orders') == 1) {
            session()->put('show_inhouse_orders', 0);
        } else {
            session()->put('show_inhouse_orders', 1);
        }
        return back();
    }

    public function uploadDigitalFileAfterSell(UploadDigitalFileAfterSellRequest $request): RedirectResponse
    {
        $orderDetails = $this->orderDetailRepo->getFirstWhere(['id' => $request['order_id']]);
        $digitalFileAfterSell = $this->updateFile(dir: 'product/digital-product/', oldImage: $orderDetails['digital_file_after_sell'], format: $request['digital_file_after_sell']->getClientOriginalExtension(), image: $request->file('digital_file_after_sell'), fileType: 'file');

        if ($this->orderDetailRepo->update(id: $orderDetails['id'], data: ['digital_file_after_sell' => $digitalFileAfterSell])) {
            ToastMagic::success(translate('digital_file_upload_successfully'));
        } else {
            ToastMagic::error(translate('digital_file_upload_failed'));
        }
        return back();
    }

}

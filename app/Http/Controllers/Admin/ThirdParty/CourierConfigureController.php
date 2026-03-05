<?php

namespace App\Http\Controllers\Admin\ThirdParty;

use App\Contracts\Repositories\BusinessSettingRepositoryInterface;
use App\Http\Controllers\BaseController;
use Devrabiul\ToastMagic\Facades\ToastMagic;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class CourierConfigureController extends BaseController
{

    public function __construct(
        private readonly BusinessSettingRepositoryInterface $businessSettingRepo,
    )
    {
    }

    /**
     * @param Request|null $request
     * @param string|null $type
     * @return View Index function is the starting point of a controller
     * Index function is the starting point of a controller
     */
    public function index(Request|null $request, string $type = null): View
    {
        return $this->getView();
    }

    public function getView(): View
    {
        return view('admin-views.third-party.courier-configuration.view');
    }

    public function update(Request $request, $service): RedirectResponse
    {
        if($service == 'pathao'){
            $value = json_encode(['status' => $request->get('status', 1), 'client_id' => $request['client_id'], 'store_id' => $request['store_id'], 'client_secret' => $request['client_secret'], 'username' => $request['username'], 'password' => $request['password'], 'base_url' => $request['base_url']]);
            $this->businessSettingRepo->updateOrInsert(type: 'pathao', value: $value);
        }elseif($service == 'steadfast'){
            $value = json_encode(['status' => $request->get('status', 1), 'api_key' => $request['api_key'], 'secret_key' => $request['secret_key']]);
            $this->businessSettingRepo->updateOrInsert(type: 'steadfast', value: $value);
        }elseif($service == 'redx'){
            $value = json_encode(['status' => $request->get('status', 1), 'base_url' => $request['base_url'], 'jwt_token' => $request['jwt_token']]);
            $this->businessSettingRepo->updateOrInsert(type: 'redx', value: $value);
        }else{
            ToastMagic::warning(translate($service . '_information_update_fail'));
            return back();
        }


       


        ToastMagic::success(translate($service . '_information_update_successfully'));
        return back();
    }
}

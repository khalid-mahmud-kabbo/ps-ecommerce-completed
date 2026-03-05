@php
    $productReviews = $product->reviews ?? [];
    $overallRating = function_exists('getOverallRating') ? getOverallRating($productReviews) : [0, 0];
@endphp

@php
    $colors = json_decode($product->colors) ?? [];
    $choiceOptions = json_decode($product->choice_options) ?? [];
    $digitalExtensions = $product['digital_product_extensions'] ?? [];
    $productImages = $product->images_full_url ?? [];
    $colorImages = $product->color_images_full_url ?? [];
@endphp

<div class="product-single-hover style--card">
    <div class="overflow-hidden position-relative">
        <div class="inline_product clickable d-flex justify-content-center">
            @if(getProductPriceByType(product: $product, type: 'discount', result: 'value') > 0)
                <div class="d-flex">
                    <span class="for-discount-value p-1 pl-2 pr-2 font-bold fs-13">
                        <span class="direction-ltr d-block">
                            -{{ getProductPriceByType(product: $product, type: 'discount', result: 'string') }}
                        </span>
                    </span>
                </div>
            @else
                <div class="d-flex justify-content-end">
                    <span class="for-discount-value-null"></span>
                </div>
            @endif
            <div class="p-10px pb-0">
                <a href="{{ route('product', $product->slug) }}" class="w-100">
                    <img alt="" src="{{ getStorageImages(path: $product->thumbnail_full_url, type: 'product') }}">
                </a>
            </div>

            <div class="quick-view">
                <a class="btn-circle stopPropagation action-product-quick-view" href="javascript:" data-product-id="{{ $product->id }}">
                    <i class="czi-eye align-middle"></i>
                </a>
            </div>

            @if($product->product_type == 'physical' && $product->current_stock <= 0)
                <span class="out_fo_stock">{{ translate('out_of_stock') }}</span>
            @endif
        </div>

        <div class="single-product-details">
            @if($overallRating[0] != 0)
                <div class="rating-show justify-content-between text-center">
                    <span class="d-inline-block font-size-sm text-body">
                        @for($inc = 1; $inc <= 5; $inc++)
                            @if($inc <= (int)$overallRating[0])
                                <i class="tio-star text-warning"></i>
                            @elseif($overallRating[0] != 0 && $inc <= (int)$overallRating[0] + 1.1 && $overallRating[0] > ((int)$overallRating[0]))
                                <i class="tio-star-half text-warning"></i>
                            @else
                                <i class="tio-star-outlined text-warning"></i>
                            @endif
                        @endfor
                        <label class="badge-style">( {{ count($product->reviews) }} )</label>
                    </span>
                </div>
            @endif

            <h3 class="text-center mb-1 letter-spacing-0">
                <a href="{{ route('product', $product->slug) }}">{{ $product['name'] }}</a>
            </h3>

            <div class="justify-content-between text-center">
                <h4 class="product-price text-center d-flex flex-wrap justify-content-center align-items-center gap-8 mb-0 letter-spacing-0">
                    @if(getProductPriceByType(product: $product, type: 'discount', result: 'value') > 0)
                        <del class="category-single-product-price">{{ webCurrencyConverter(amount: $product->unit_price) }}</del>
                    @endif
                    <span class="text-accent text-dark">{{ getProductPriceByType(product: $product, type: 'discounted_unit_price', result: 'string') }}</span>
                </h4>
            </div>

            {{-- Product Images --}}
           
                <div class="row">
                    <div class="col-lg-5 col-md-4 d-none">
                        <div class="cz-product-gallery">
                            <div class="cz-preview">
                                <div id="sync1" class="owl-carousel owl-theme product-thumbnail-slider">
                                    @if(count($colorImages) > 0)
                                        @foreach($colorImages as $key => $photo)
                                            <div class="product-preview-item d-flex align-items-center justify-content-center {{ $key==0?'active':'' }}" id="image{{ $photo['color'] ?? $key }}">
                                                <img class="cz-image-zoom img-responsive w-100"
                                                     src="{{ getStorageImages(path: $photo['image_name'], type: 'product') }}"
                                                     data-zoom="{{ getStorageImages(path: $photo['image_name'], type: 'product') }}"
                                                     alt="{{ translate('product') }}">
                                                <div class="cz-image-zoom-pane"></div>
                                            </div>
                                        @endforeach
                                    @elseif(count($productImages) > 0)
                                        @foreach($productImages as $key => $photo)
                                            <div class="product-preview-item d-flex align-items-center justify-content-center {{ $key==0?'active':'' }}" id="image{{ $key }}">
                                                <img class="cz-image-zoom img-responsive w-100"
                                                     src="{{ getStorageImages($photo, type: 'product') }}"
                                                     data-zoom="{{ getStorageImages(path: $photo, type: 'product') }}"
                                                     alt="{{ translate('product') }}">
                                                <div class="cz-image-zoom-pane"></div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>

                                @if($product?->preview_file_full_url['path'])
                                    <div>
                                        <div class="product-preview-modal-text" data-toggle="modal" data-target="#product-preview-modal">
                                            <span class="text-primary fw-bold py-2 user-select-none fs-14">{{ translate('See_Preview') }}</span>
                                        </div>
                                    </div>
                                @endif
                            </div>

                            {{-- Thumbnail Carousel --}}
                            <div class="cz">
                                <div class="table-responsive __max-h-515px" data-simplebar>
                                    <div class="d-flex">
                                        <div id="sync2" class="owl-carousel owl-theme product-thumb-slider">
                                            @if(count($colorImages) > 0)
                                                @foreach($colorImages as $key => $photo)
                                                    <a class="product-preview-thumb color-variants-preview-box-{{ $photo['color'] ?? $key }} {{ $key==0?'active':'' }}" href="#image{{ $photo['color'] ?? $key }}">
                                                        <img src="{{ getStorageImages(path: $photo['image_name'], type: 'product') }}" alt="{{ translate('product') }}">
                                                    </a>
                                                @endforeach
                                            @elseif(count($productImages) > 0)
                                                @foreach($productImages as $key => $photo)
                                                    <a class="product-preview-thumb {{ $key==0?'active':'' }}" href="#image{{ $key }}">
                                                        <img src="{{ getStorageImages(path: $photo, type: 'product') }}" alt="{{ translate('product') }}">
                                                    </a>
                                                @endforeach
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- Product Details Form --}}
                    
                
            </div>

            <div class="row justify-content-center">
                <div class="mt-md-0 mt-sm-3 web-direction">
                        <div class="details __h-100 product-cart-option-container">
                            @if($product['product_type'] == 'digital')
                                <div class="digital-product-authors mb-2">
                                    @if(count($productPublishingHouseInfo['data'] ?? []) > 0)
                                        <div class="d-flex align-items-center g-2 me-2">
                                            <span class="text-capitalize digital-product-author-title">{{ translate('Publishing_House') }} :</span>
                                            <div class="item-list">
                                                @foreach($productPublishingHouseInfo['data'] as $publishingHouseName)
                                                    <a href="{{ route('products', ['publishing_house_id' => $publishingHouseName['id'], 'product_type' => 'digital', 'page'=>1]) }}" class="text-base">
                                                        {{ $publishingHouseName['name'] }}
                                                    </a>
                                                @endforeach
                                            </div>
                                        </div>
                                    @endif

                                    @if(count($productAuthorsInfo['data'] ?? []) > 0)
                                        <div class="d-flex align-items-center g-2 me-2">
                                            <span class="text-capitalize digital-product-author-title">{{ translate('Author') }} :</span>
                                            <div class="item-list">
                                                @foreach($productAuthorsInfo['data'] as $productAuthor)
                                                    <a href="{{ route('products', ['author_id' => $productAuthor['id'], 'product_type' => 'digital', 'page' => 1]) }}" class="text-base">
                                                        {{ $productAuthor['name'] }}
                                                    </a>
                                                @endforeach
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            @endif

                            <form class="mb-2 addToCartDynamicForm add-to-cart-details-form" id="add-to-cart-form-{{ $product->id }}">
                                @csrf
                                <input type="hidden" class="product-exist-in-cart-list" name="key" value="">
                                <input type="hidden" name="id" value="{{ $product->id }}">

                                {{-- Colors --}}
                                @if(count($colors) > 0)
                                    <div class="flex-start align-items-center mb-2 gap-2" style="display:none;">
                                        <div class="product-description-label m-0 text-dark font-bold">{{ translate('color') }}:</div>
                                        <ul class="list-inline checkbox-color mb-0 flex-start ms-2 ps-0">
                                            @foreach($colors as $key => $color)
                                                <li>
                                                    <input type="radio" id="color-{{ $product->id }}-{{ $key }}" name="color" value="{{ $color }}" @if($key==0) checked @endif>
                                                    <label style="background: {{ $color }};" for="color-{{ $product->id }}-{{ $key }}">
                                                        <span class="outline"></span>
                                                    </label>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif

                                {{-- Choice Options --}}
                                @foreach($choiceOptions as $choice)
                                    @php($options = $choice->options ?? [])
                                    @if(count($options) > 0)
                                        <div class="row flex-start mx-0 align-items-center" style="display:none;">
                                            <div class="product-description-label text-dark font-bold text-capitalize mb-2">{{ $choice->title }}:</div>
                                            <div>
                                                <div class="list-inline checkbox-alphanumeric checkbox-alphanumeric--style-1 mb-0 mx-1 flex-start row ps-0">
                                                    @foreach($options as $index => $option)
                                                        <div class="user-select-none">
                                                            <div class="for-mobile-capacity">
                                                                <input type="radio" id="{{ $choice->name }}-{{ $index }}" name="{{ $choice->name }}" value="{{ $option }}" @if($index==0) checked @endif>
                                                                <label for="{{ $choice->name }}-{{ $index }}">{{ $option }}</label>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach

                                {{-- Digital Extensions --}}
                                @foreach($digitalExtensions as $extensionKey => $extensionGroup)
                                    @php($groupItems = $extensionGroup ?? [])
                                    @if(count($groupItems) > 0)
                                        <div class="row flex-start mx-0 align-items-center" style="display:none;">
                                            <div class="product-description-label text-dark font-bold text-capitalize mb-2">{{ translate($extensionKey) }}:</div>
                                            <div class="list-inline checkbox-alphanumeric checkbox-alphanumeric--style-1 mb-0 mx-1 flex-start ps-0">
                                                @foreach($groupItems as $index => $item)
                                                    <div class="user-select-none">
                                                        <div class="for-mobile-capacity">
                                                            <input type="radio" id="extension-{{ $extensionKey }}-{{ $index }}" name="variant_key" value="{{ $extensionKey.'-'.preg_replace('/\s+/', '-', $item) }}" @if($index==0) checked @endif>
                                                            <label for="extension-{{ $extensionKey }}-{{ $index }}">{{ $item }}</label>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    @endif
                                @endforeach

                                {{-- Quantity and Buttons --}}
                                <div class="mt-3 d-none" style="display:none;">
                                    <div class="product-quantity d-flex flex-column __gap-15">
                                        <div class="d-flex align-items-center gap-3">
                                            <div class="product-description-label text-dark font-bold mt-0">{{ translate('quantity') }}:</div>
                                            <div class="d-flex justify-content-center align-items-center quantity-box border rounded border-base web-text-primary">
                                                <button class="btn btn-number __p-10 web-text-primary" type="button" data-type="minus" data-field="quantity" disabled>-</button>
                                                <input type="text" name="quantity" class="form-control input-number text-center product-details-cart-qty __inline-29 border-0" placeholder="{{ translate('1') }}" value="{{ $product->minimum_order_qty ?? 1 }}" min="{{ $product->minimum_order_qty ?? 1 }}" max="{{ $product['product_type'] == 'physical' ? $product->current_stock : 100 }}">
                                                <button class="btn btn-number __p-10 web-text-primary" type="button" data-type="plus" data-field="quantity">+</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="__btn-grp mt-2 mb-3 product-add-and-buy-section-parent">
                                    <div class="product-add-and-buy-section gap-2 d-flex">
                                        @if($product['current_stock'] > 0)

                                        
                                        <button type="button"
                        class="btn btn-secondary product-buy-now-button"
                        data-form="#add-to-cart-form-{{ $product->id }}"
                        data-auth="{{ (getWebConfig(name: 'guest_checkout') == 1 || Auth::guard('customer')->check()) ? 'true' : 'false' }}"
                        data-route="{{ route('checkout-details') }}">
                    {{ translate('buy_now') }}
                </button>

                <button type="button"
                        class="btn btn--primary product-add-to-cart-button"
                        data-form="#add-to-cart-form-{{ $product->id }}"
                        data-update="{{ translate('update_cart') }}"
                        data-add="{{ translate('add_to_cart') }}">
                    {{ translate('add_to_cart') }}
                </button>
@else

<button type="button"
                        class="btn request-restock-btn btn-outline-primary fw-semibold product-restock-request-button"
                        data-auth="{{ auth('customer')->check() ? 'true' : 'false' }}"
                        data-form="#add-to-cart-form-{{ $product->id }}"
                        data-default="{{ translate('Request_Restock') }}"
                        data-requested="{{ translate('Request_Sent') }}">
                    {{ translate('Request_Restock') }}
                </button>

            @endif
                                        
                                    </div>

                                    
                                </div>

                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>

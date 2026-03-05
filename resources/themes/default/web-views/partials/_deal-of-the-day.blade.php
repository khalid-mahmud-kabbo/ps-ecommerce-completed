<div class="container rtl">
    <div class="row g-4 pt-2 mt-0 pb-2 __deal-of align-items-start">
        <div
            class="col-12">
            <div class="latest-product-margin">
                <div class="d-flex justify-content-between align-items-baseline mb-14px">
                    <h2 class="text-center mb-0">
                    <span class="for-feature-title __text-22px font-bold text-center">
                        {{ translate('latest_products')}}
                    </span>
                    </h2>
                    <div class="mr-1">
                        <a class="text-capitalize view-all-text web-text-primary"
                           href="{{route('products',['data_from'=>'latest'])}}">
                            {{ translate('view_all')}}
                            <i class="czi-arrow-{{Session::get('direction') === "rtl" ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                        </a>
                    </div>
                </div>

                <div class="row mt-0 g-2">
                    @php($latestProductsListIndex=0)
                    @foreach($latestProductsList as $product)
                        @if($latestProductsListIndex < 8)
                            @php($latestProductsListIndex++)
                            <div class="col-xl-3 col-sm-4 col-md-6 col-lg-4 col-6">
                                <div>
                                    @include('web-views.partials._inline-single-product',['product'=>$product,'decimal_point_settings'=>$decimal_point_settings])
                                </div>
                            </div>
                        @endif
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>


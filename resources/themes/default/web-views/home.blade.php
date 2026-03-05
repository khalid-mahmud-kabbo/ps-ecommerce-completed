@extends('layouts.front-end.app')

@section('title', $web_config['company_name'].' '.translate('online_Shopping').' | '.$web_config['company_name'].'
'.translate('ecommerce'))

@push('css_or_js')
<meta name="robots" content="index, follow">
<meta property="og:image" content="{{$web_config['web_logo']['path']}}" />
<meta property="og:title" content="Welcome To {{$web_config['company_name']}} Home" />
<meta property="og:url" content="{{env('APP_URL')}}">
<meta name="description" content="{{ $web_config['meta_description'] }}">
<meta property="og:description" content="{{ $web_config['meta_description'] }}">
<meta property="twitter:card" content="{{$web_config['web_logo']['path']}}" />
<meta property="twitter:title" content="Welcome To {{$web_config['company_name']}} Home" />
<meta property="twitter:url" content="{{env('APP_URL')}}">
<meta property="twitter:description" content="{{ $web_config['meta_description'] }}">
<link rel="stylesheet" href="{{theme_asset(path: 'public/assets/front-end/css/home.css')}}" />
<link rel="stylesheet" href="{{ theme_asset(path: 'public/assets/front-end/css/owl.carousel.min.css') }}">
<link rel="stylesheet" href="{{ theme_asset(path: 'public/assets/front-end/css/owl.theme.default.min.css') }}">
@endpush

@section('content')
<div class="__inline-61 d-flex flex-column gap-20">
    @php($decimalPointSettings = !empty(getWebConfig(name: 'decimal_point_settings')) ? getWebConfig(name:
    'decimal_point_settings') : 0)

    @include('web-views.partials._home-top-slider',['bannerTypeMainBanner'=>$bannerTypeMainBanner])
    @if ($flashDeal['flashDeal'] && $flashDeal['flashDealProducts'] && count($flashDeal['flashDealProducts']) > 0)
    @include('web-views.partials._flash-deal', ['decimal_point_settings'=>$decimalPointSettings])
    @endif








 @include('web-views.partials._category-section-home')



    @if ($featuredProductsList->count() > 0 )
        <div class="container rtl">
    <div class="row g-4 pt-2 mt-0 pb-2 __deal-of align-items-start">
        <div class="col-12">
            <div class="latest-product-margin">
                <div class="section-header align-items-center mb-1">
                    <h2 class="text-black font-bold __text-22px mb-0">
                        <span> {{translate('featured_products')}}</span>
                    </h2>
                    <div class="__mr-2px">
                        <a class="text-capitalize view-all-text web-text-primary"
                            href="{{route('products',['data_from'=>'feature'])}}">
                            {{ translate('view_all')}}
                            <i
                                class="czi-arrow-{{Session::get('direction') === 'rtl' ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                        </a>
                    </div>
                </div>
                <div class="row mt-0 g-2">
                    @foreach($featuredProductsList as $product)
                    <div class="col-xl-3 col-sm-4 col-md-6 col-lg-4 col-6 latest-section">
                        <div>
                            @include('web-views.partials._feature-product',['product'=>$product,
                        'decimal_point_settings'=>$decimalPointSettings])
                        </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
</div>


    @endif























   

    @if(getFeaturedDealsProductList() && (count(getFeaturedDealsProductList())>0))
    <section class="featured_deal">
        <div class="container">
            <div class="__featured-deal-wrap bg--light">
                <div class="d-flex flex-wrap justify-content-between gap-8 mb-3">
                    <div class="w-0 flex-grow-1">
                        <span class="featured_deal_title font-bold text-dark">{{ translate('featured_deal')}}</span>
                        <br>
                        <span class="text-left text-nowrap">{{
                            translate('see_the_latest_deals_and_exciting_new_offers')}}!</span>
                    </div>
                    <div>
                        <a class="text-capitalize view-all-text web-text-primary"
                            href="{{route('products',['offer_type'=>'featured_deal'])}}">
                            {{ translate('view_all')}}
                            <i
                                class="czi-arrow-{{Session::get('direction') === 'rtl' ? 'left mr-1 ml-n1 mt-1' : 'right ml-1'}}"></i>
                        </a>
                    </div>
                </div>
                <div class="owl-carousel owl-theme new-arrivals-product">
                    @foreach(getFeaturedDealsProductList() as $key=>$product)
                    @include('web-views.partials._product-card-1',['product'=>$product,
                    'decimal_point_settings'=>$decimalPointSettings])
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    @endif

    @include('web-views.partials._clearance-sale-products', ['clearanceSaleProducts' => $clearanceSaleProducts])

    @if (isset($bannerTypeMainSectionBanner))
    <div class="container rtl pt-4 px-0 px-md-3">
        <a href="{{$bannerTypeMainSectionBanner->url}}" target="_blank" class="cursor-pointer d-block">
            <img class="d-block footer_banner_img __inline-63" alt=""
                src="{{ getStorageImages(path:$bannerTypeMainSectionBanner->photo_full_url, type: 'wide-banner') }}">
        </a>
    </div>
    @endif

    @php($businessMode = getWebConfig(name: 'business_mode'))
    @if ($businessMode == 'multi' && count($topVendorsList) > 0)
    @include('web-views.partials._top-sellers')
    @endif

    @include('web-views.partials._deal-of-the-day', ['decimal_point_settings' => $decimalPointSettings])















  








 @if ($bestSellProduct->count() > 0 )
<div class="container rtl">
    <div class="row g-4 pt-2 mt-0 pb-2 __deal-of align-items-start">
        <div class="col-12">
            <div class="latest-product-margin">
                <div class="section-header align-items-center mb-1">
                    <h2 class="text-black font-bold __text-22px mb-0">
                        <span> {{translate('Best_Selling')}}</span>
                    </h2>
                    <div class="__mr-2px">
                        <a class="text-capitalize view-all-text web-text-primary"
                            href="{{route('products',['data_from'=>'best-selling','page'=>1])}}">
                            {{ translate('view_all')}}
                            <i
                                class="czi-arrow-{{Session::get('direction') === 'rtl' ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                        </a>
                    </div>
                </div>
                <div class="row mt-0 g-2">
                    @foreach($bestSellProduct as $key=> $product)
                @if($product && $key<6)
                    <div class="col-xl-3 col-sm-4 col-md-6 col-lg-4 col-6 latest-section">
                        <div>
                            @include('web-views.partials._best-selling')
                        </div>
                </div>
                @endif
                @endforeach
            </div>
        </div>
    </div>
</div>
</div>
@endif





  @if ($homeCategories->count() > 0)
    @foreach($homeCategories as $category)
    @include('web-views.partials._category-wise-product', ['decimal_point_settings'=>$decimalPointSettings])
    @endforeach
    @endif















    @if (count($bannerTypeFooterBanner) > 1)
    <div class="container rtl pt-4">
        <div class="promotional-banner-slider owl-carousel owl-theme">
            @foreach($bannerTypeFooterBanner as $banner)
            <a href="{{ $banner['url'] }}" class="d-block" target="_blank">
                <img class="footer_banner_img __inline-63" alt=""
                    src="{{ getStorageImages(path:$banner->photo_full_url, type: 'banner') }}">
            </a>
            @endforeach
        </div>
    </div>
    @else
    <div class="container rtl pt-4">
        <div class="row">
            @foreach($bannerTypeFooterBanner as $banner)
            <div class="col-md-6">
                <a href="{{ $banner['url'] }}" class="d-block" target="_blank">
                    <img class="footer_banner_img __inline-63" alt=""
                        src="{{ getStorageImages(path:$banner->photo_full_url, type: 'banner') }}">
                </a>
            </div>
            @endforeach
        </div>
    </div>
    @endif





















































    @if($web_config['brand_setting'] && $brands->count() > 0)
    <section class="container rtl pt-4">

        <div class="section-header align-items-center mb-1">
            <h2 class="text-black font-bold __text-22px mb-0">
                <span> {{translate('brands')}}</span>
            </h2>
            <div class="__mr-2px">
                <a class="text-capitalize view-all-text web-text-primary" href="{{route('brands')}}">
                    {{ translate('view_all')}}
                    <i
                        class="czi-arrow-{{Session::get('direction') === 'rtl' ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                </a>
            </div>
        </div>

        <div class="mt-sm-3 mb-3 brand-slider">
            <div class="owl-carousel owl-theme p-2 brands-slider">
                @php($brandCount=0)
                @foreach($brands as $brand)
                @if($brandCount < 15) <div class="text-center">
                    <a href="{{route('products',['brand_id'=> $brand['id'],'data_from'=>'brand','page'=>1])}}"
                        class="__brand-item">
                        <img alt="{{ $brand->image_alt_text }}"
                            src="{{ getStorageImages(path: $brand->image_full_url, type: 'brand') }}">
                    </a>
            </div>
            @endif
            @php($brandCount++)
            @endforeach
        </div>
</section>
@endif




@php($companyReliability = getWebConfig(name: 'company_reliability'))
@if($companyReliability != null)
@include('web-views.partials._company-reliability')
@endif
</div>

<span id="direction-from-session" data-value="{{ session()->get('direction') }}"></span>
@endsection

@push('script')
<script src="{{theme_asset(path: 'public/assets/front-end/js/owl.carousel.min.js')}}"></script>
<script src="{{ theme_asset(path: 'public/assets/front-end/js/home.js') }}"></script>
@endpush

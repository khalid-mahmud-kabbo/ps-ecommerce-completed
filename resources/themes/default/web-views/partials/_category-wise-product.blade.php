@if (count($category['products']) > 0)
<div class="container rtl">
    <div class="row g-4 pt-2 mt-0 pb-2 __deal-of align-items-start">
        <div class="col-12">
            <div class="latest-product-margin">
                <div class="section-header align-items-center mb-1">
                    <h2 class="text-black font-bold __text-22px mb-0">
                        <span>{{$category['name']}}</span>
                    </h2>
                    <div class="__mr-2px">
                        <a class="text-capitalize view-all-text web-text-primary"
                            href="{{route('products',['category_id'=> $category['id'],'data_from'=>'category','page'=>1])}}">
                            {{ translate('view_all')}}
                            <i
                                class="czi-arrow-{{Session::get('direction') === 'rtl' ? 'left mr-1 ml-n1 mt-1 float-left' : 'right ml-1 mr-n1'}}"></i>
                        </a>
                    </div>
                </div>
                <div class="row mt-0 g-2">
                     @foreach($category['products'] as $key=>$product)
                    <div class="col-xl-3 col-sm-4 col-md-6 col-lg-4 col-6 latest-section">
                        <div>
                            @include('web-views.partials._category-single-product', ['product'=>$product])
                        </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
</div>
@endif
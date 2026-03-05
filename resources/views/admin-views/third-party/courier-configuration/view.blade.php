@extends('layouts.admin.app')

@section('title', translate('Courier_Configuration'))

@section('content')
<div class="content container-fluid">
    <div class="mb-3 mb-sm-20">
        <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
            {{ translate('3rd Party - Courier Configuration') }}
        </h2>
    </div>


    <div class="card mb-3">


        
            <div class="card-header px-20 py-3">
                <h2>{{ translate('Automated_Courier_Configuration') }}</h2>
                <p class="mb-0 fs-12">
                    {{ translate('setup_Automation_Courier_to_place_and_analyze_orders') }}.
                </p>
            </div>
            <div class="card-body">
                <div class="d-flex flex-column gap-20">







@php($pathao = getWebConfig('pathao'))
        <form action="{{ route('admin.third-party.courier-configuration.update', ['pathao']) }}" method="post">
            @csrf
                    <div class="card card-sm shadow-1">
                        <div class="card-body">
                            <div class="view-details-container">
                                <div class="d-flex justify-content-between align-items-center gap-3">
                                    <div>
                                        <h3 class="mb-1">
                                            {{ translate('Pathao') }}
                                        </h3>
                                        <p class="mb-0 fs-12">
                                            {{ translate('provide_your_Pathao_Courier_Store_ID_and_Access_Token.') }}
                                        </p>
                                        <a data-bs-toggle="modal"
                                                       href="#pathao-modal"
                                                       class="fs-12 text-decoration-underline">{{ translate('Get_Credential_Setup') }}</a>
                                    </div>
                                    <div class="d-flex gap-2">
                                        <a href="javascript:" class="fs-12 fw-semibold d-flex align-items-end view-btn">
                                            {{ translate('View') }}
                                            <i class="fi fi-rr-arrow-small-down fs-16 trans3"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="d--none view-details mt-3 mt-sm-4">

                                    <div class="p-12 p-sm-20 bg-section rounded">


                                        <div class="form-group">
                                            <label class="form-label" for="">{{ translate('Base_Url') }}
                                            </label>
                                            <input type="text" id="base_url" name="base_url" class="form-control"
                                                value="{{ $pathao['base_url'] }}"
                                                placeholder="{{ translate('Base_Url') }}">
                                        </div>

                                        <div class="form-group">
                                            <label class="form-label" for="">{{ translate('Client_Id') }}
                                            </label>
                                            <input type="text" id="client_id" name="client_id" class="form-control"
                                                value="{{ $pathao['client_id'] }}"
                                                placeholder="{{ translate('Client_Id') }}">
                                        </div>




                                        <div class="form-group">
                                            <label class="form-label" for="">{{ translate('Store_id') }}
                                            </label>


                                            <input type="text" id="store_id" name="store_id" class="form-control"
                                                value="{{ $pathao['store_id'] }}"
                                                placeholder="{{ translate('Store_id') }}">
                                        </div>

                                        <div class="form-group">
                                            <label class="form-label" for="">{{ translate('Client_Secret') }}</label>
                                            <input type="text" id="client_secret" name="client_secret"
                                                class="form-control" value="{{ $pathao['client_secret'] }}"
                                                placeholder="{{ translate('Client_Secret') }}">
                                        </div>

                                          <div class="form-group">
                                            <label class="form-label" for="">{{ translate('username') }}</label>
                                            <input type="text" id="username" name="username"
                                                class="form-control" value="{{ $pathao['username'] }}"
                                                placeholder="{{ translate('username') }}">
                                        </div>

                                          <div class="form-group">
                                            <label class="form-label" for="">{{ translate('password') }}</label>
                                            <input type="text" id="password" name="password"
                                                class="form-control" value="{{ $pathao['password'] }}"
                                                placeholder="{{ translate('password') }}">
                                        </div>




                                        <div class="d-flex justify-content-end flex-wrap gap-3">
                                            <button type="reset" class="btn btn-secondary w-120 px-4">{{
                                                translate('reset') }}</button>
                                             <button type="submit"
                                                class="btn btn-primary w-120 px-4">{{ translate('Update') }}</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</form>












@php($steadfast = getWebConfig('steadfast'))
        <form action="{{ route('admin.third-party.courier-configuration.update', ['steadfast']) }}" method="post">
            @csrf
                    <div class="card card-sm shadow-1">
                        <div class="card-body">
                            <div class="view-details-container">
                                <div class="d-flex justify-content-between align-items-center gap-3">
                                    <div>
                                        <h3 class="mb-1">
                                            {{ translate('Steadfast') }}
                                        </h3>
                                        <p class="mb-0 fs-12">
                                            {{ translate('provide_your_Steadfast_Courier_API_key_and_secret_key.') }}
                                        </p>
                                        <a data-bs-toggle="modal"
                                                       href="#steadfast-modal"
                                                       class="fs-12 text-decoration-underline">{{ translate('Get_Credential_Setup') }}</a>
                                    </div>
                                    <div class="d-flex gap-2">
                                        <a href="javascript:" class="fs-12 fw-semibold d-flex align-items-end view-btn">
                                            {{ translate('View') }}
                                            <i class="fi fi-rr-arrow-small-down fs-16 trans3"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="d--none view-details mt-3 mt-sm-4">

                                    <div class="p-12 p-sm-20 bg-section rounded">


                                        <div class="form-group">
                                            <label class="form-label" for="">{{ translate('Api_Key') }}
                                            </label>


                                            <input type="text" id="api_key" name="api_key" class="form-control"
                                                value="{{ $steadfast['api_key'] }}"
                                                placeholder="{{ translate('Api_Key') }}">
                                        </div>

                                        <div class="form-group">
                                            <label class="form-label" for="">{{ translate('Secret_Key') }}</label>
                                            <input type="text" id="secret_key" name="secret_key"
                                                class="form-control" value="{{ $steadfast['secret_key'] }}"
                                                placeholder="{{ translate('Secret_Key') }}">
                                        </div>




                                        <div class="d-flex justify-content-end flex-wrap gap-3">
                                            <button type="reset" class="btn btn-secondary w-120 px-4">{{
                                                translate('reset') }}</button>
                                            <button type="submit"
                                                class="btn btn-primary w-120 px-4">{{ translate('Update') }}</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</form>








@php($redx = getWebConfig('redx'))
        <form action="{{ route('admin.third-party.courier-configuration.update', ['redx']) }}" method="post">
            @csrf
                    <div class="card card-sm shadow-1">
                        <div class="card-body">
                            <div class="view-details-container">
                                <div class="d-flex justify-content-between align-items-center gap-3">
                                    <div>
                                        <h3 class="mb-1">
                                            {{ translate('Redx') }}
                                        </h3>
                                        <p class="mb-0 fs-12">
                                            {{ translate('provide_your_Redx_Courier_JWT_token.') }}
                                        </p>
                                        <a data-bs-toggle="modal"
                                                       href="#redx-modal"
                                                       class="fs-12 text-decoration-underline">{{ translate('Get_Credential_Setup') }}</a>
                                    </div>
                                    <div class="d-flex gap-2">
                                        <a href="javascript:" class="fs-12 fw-semibold d-flex align-items-end view-btn">
                                            {{ translate('View') }}
                                            <i class="fi fi-rr-arrow-small-down fs-16 trans3"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="d--none view-details mt-3 mt-sm-4">

                                    <div class="p-12 p-sm-20 bg-section rounded">


                                         <div class="form-group">
                                            <label class="form-label" for="">{{ translate('Base_Url') }}
                                            </label>
                                            <input type="text" id="base_url" name="base_url" class="form-control"
                                                value="{{ $redx['base_url'] }}"
                                                placeholder="{{ translate('Base_Url') }}">
                                        </div>


                                        <div class="form-group">
                                            <label class="form-label" for="">{{ translate('Jwt_Token') }}
                                            </label>


                                            <input type="text" id="jwt_token" name="jwt_token" class="form-control"
                                                value="{{ $redx['jwt_token'] }}"
                                                placeholder="{{ translate('Jwt_Token') }}">
                                        </div>





                                        <div class="d-flex justify-content-end flex-wrap gap-3">
                                            <button type="reset" class="btn btn-secondary w-120 px-4">{{
                                                translate('reset') }}</button>
                                            <button type="submit"
                                                class="btn btn-primary w-120 px-4">{{ translate('Update') }}</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</form>



                </div>
            </div>
        
    </div>







</div>




 <div class="modal fade" id="pathao-modal" data-backdrop="static" data-keyboard="false" tabindex="-1"
             aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content"
                     style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                    <div class="modal-header border-0 pb-0 d-flex justify-content-end">
                        <button type="button" class="btn-close border-0 btn-circle bg-section2 shadow-none"
                                data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body px-20 py-0 mb-30">
                        <div class="d-flex gap-3 flex-column align-items-center text-center mb-4">
                            <img width="80" src="{{ dynamicAsset(path: 'public/assets/back-end/img/pathao.svg') }}" alt="">
                            <h4 class="modal-title"
                                id="staticBackdropLabel">{{ translate('pathao_API_Set_up_Instructions') }}</h4>
                        </div>

                        <ol class="d-flex flex-column gap-2">
                            <li>{{ translate('go_to_pathao_marchant_register_page') }} (<a
                                    href="https://merchant.pathao.com/register"
                                    target="_blank">{{ translate('click_here') }}</a>)
                            </li>
                            <li>{{ translate('fill_up_the_registration_form_and_click_on_register') }}</li>
                            <li>{{ translate('go_to_the_Merchant_Dashboard_page') }}</li>
                            <li>{{ translate('now_click_on_developers_API') }}</li>
                            <li>{{ translate('on_this_you_can_see_your_api_credentials') }}</li>
                            
                        </ol>
                        <div class="d-flex justify-content-center mt-4">
                            <button type="button" class="btn btn-primary px-5"
                                    data-bs-dismiss="modal">{{ translate('got_it') }}</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>










        <div class="modal fade" id="steadfast-modal" data-backdrop="static" data-keyboard="false" tabindex="-1"
             aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content"
                     style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                    <div class="modal-header border-0 pb-0 d-flex justify-content-end">
                        <button type="button" class="btn-close border-0 btn-circle bg-section2 shadow-none"
                                data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body px-20 py-0 mb-30">
                        <div class="d-flex gap-3 flex-column align-items-center text-center mb-4">
                            <img width="80" src="{{ dynamicAsset(path: 'public/assets/back-end/img/steadfast.svg') }}" alt="">
                            <h4 class="modal-title"
                                id="staticBackdropLabel">{{ translate('steadfast_API_Set_up_Instructions') }}</h4>
                        </div>

                        <ol class="d-flex flex-column gap-2">
                            <li>{{ translate('go_to_steadfast_marchant_register_page') }} (<a
                                    href="https://www.steadfast.com.bd/register"
                                    target="_blank">{{ translate('click_here') }}</a>)
                            </li>
                             <li>{{ translate('fill_up_the_registration_form_and_click_on_register') }}</li>
                            <li>{{ translate('go_to_the_Merchant_Dashboard_page') }}</li>
                            <li>{{ translate('now_click_on_developers_API') }}</li>
                            <li>{{ translate('on_this_you_can_see_your_api_credentials') }}</li>
                        </ol>
                        <div class="d-flex justify-content-center mt-4">
                            <button type="button" class="btn btn-primary px-5"
                                    data-bs-dismiss="modal">{{ translate('got_it') }}</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>




         <div class="modal fade" id="redx-modal" data-backdrop="static" data-keyboard="false" tabindex="-1"
             aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content"
                     style="text-align: {{Session::get('direction') === "rtl" ? 'right' : 'left'}};">
                    <div class="modal-header border-0 pb-0 d-flex justify-content-end">
                        <button type="button" class="btn-close border-0 btn-circle bg-section2 shadow-none"
                                data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body px-20 py-0 mb-30">
                        <div class="d-flex gap-3 flex-column align-items-center text-center mb-4">
                            <img width="80" src="{{ dynamicAsset(path: 'public/assets/back-end/img/redx.svg') }}" alt="">
                            <h4 class="modal-title"
                                id="staticBackdropLabel">{{ translate('redx_API_Set_up_Instructions') }}</h4>
                        </div>

                        <ol class="d-flex flex-column gap-2">
                            <li>{{ translate('go_to_redx_marchant_register_page') }} (<a
                                    href="https://redx.com.bd/registration/"
                                    target="_blank">{{ translate('click_here') }}</a>)
                            </li>
                            <li>{{ translate('fill_up_the_registration_form_and_click_on_register') }}</li>
                            <li>{{ translate('go_to_the_Merchant_Dashboard_page') }}</li>
                            <li>{{ translate('now_click_on_developers_API') }}</li>
                            <li>{{ translate('on_this_you_can_see_your_api_credentials') }}</li>
                        </ol>
                        <div class="d-flex justify-content-center mt-4">
                            <button type="button" class="btn btn-primary px-5"
                                    data-bs-dismiss="modal">{{ translate('got_it') }}</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection

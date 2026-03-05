@extends('layouts.admin.app')

@section('title', translate('fraud_checking_configuration'))

@section('content')
    <div class="content container-fluid">
        <div class="mb-3 mb-sm-20">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                {{ translate('3rd Party - Fraud Checking Configurations') }}
            </h2>
        </div>


      @php($bdcourier = getWebConfig('bdcourier'))
        <div class="card mb-3">
            <form action="{{ route('admin.third-party.fraud-checker.update', ['bdcourier']) }}" method="post">
                @csrf
                <div class="card-header px-20 py-3">
                    <h2>{{ translate('Fraud_Checker_Configuration') }}</h2>
                    <p class="mb-0 fs-12">
                        {{ translate('setup_fraud_checker_to_track_fraud_and_analyze_orders') }}.
                    </p>
                </div>
                <div class="card-body">
                    <div class="d-flex flex-column gap-20">
                        <div class="card card-sm shadow-1">
                            <div class="card-body">
                                <div class="view-details-container">
                                    <div class="d-flex justify-content-between align-items-center gap-3">
                                        <div>
                                            <h3 class="mb-1">
                                                {{ translate('BD_Courier') }}
                                            </h3>
                                            <p class="mb-0 fs-12">
                                                {{ translate('provide_your_BD_Courier_API_key_and_api_url') }}
                                                .
                                            </p>
                                        </div>
                                        <div class="d-flex gap-2">
                                            <a href="javascript:"
                                               class="fs-12 fw-semibold d-flex align-items-end view-btn">
                                                {{ translate('View') }}
                                                <i class="fi fi-rr-arrow-small-down fs-16 trans3"></i>
                                            </a>
                                      
                                        </div>
                                    </div>
                                    <div class="d--none view-details mt-3 mt-sm-4">
                                       
                                        <div class="p-12 p-sm-20 bg-section rounded">
                                                
                                            
                                            <div class="form-group">
                                                    <label class="form-label" for="">{{ translate('API_Key') }}
                                                    </label>

                                                    
                                                    <input type="text" id="api_key" name="api_key" class="form-control"
                                                           value="{{ $bdcourier['api_key'] }}"
                                                           placeholder="{{ translate('API_Key') }}">
                                                </div>

                                                 <div class="form-group">
                                                    <label class="form-label" for="">{{ translate('API_URL_ENDPOINT') }}</label>
                                                    <input type="text" id="api_url" name="api_url" class="form-control"
                                                           value="{{ $bdcourier['api_url'] }}"
                                                           placeholder="{{ translate('API_URL_ENDPOINT') }}">
                                                </div>




                                                <div class="d-flex justify-content-end flex-wrap gap-3">
                                                    <button type="reset"
                                                            class="btn btn-secondary w-120 px-4">{{ translate('reset') }}</button>
                                                    <button type="{{env('APP_MODE')!='demo'?'submit':'button'}}"
                                                            class="btn btn-primary w-120 px-4 {{env('APP_MODE')!= 'demo'? '' : 'call-demo-alert'}}"
                                                    >{{ translate('Update') }}</button>
                                                </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

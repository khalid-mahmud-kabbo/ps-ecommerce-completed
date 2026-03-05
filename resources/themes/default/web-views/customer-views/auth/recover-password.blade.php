@extends('layouts.front-end.app')

@section('title', translate('forgot_Password'))
@php($recaptcha = getWebConfig(name: 'recaptcha'))

@section('content')
    <div class="container py-4 py-lg-5 my-4 rtl">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10 text-start">
                <h2 class="h3 mb-4">{{ translate('forgot_your_password') }}?</h2>
                <p class="font-size-md">
                    {{ translate('change_your_password_in_three_easy_steps.') }}
                    {{ translate('this_helps_to_keep_your_new_password_secure.') }}
                </p>

                <div class="card py-2 mt-4">
                    <form class="card-body needs-validation" action="{{ route('customer.auth.forgot-password') }}"
                        method="post" id="customer-forgot-password-form">
                        @csrf


                        <div class="form-group mb-3">
                            <label for="recover-phone">
                                {{ translate('Phone') }}
                            </label>
                            <input class="form-control clean-phone-input-value" type="text" name="phone"
                                placeholder="{{ translate('enter_your_phone_number') }}">
                            <span class="fs-12 text-muted">*
                                {{ translate('must_use_country_code_before_phone_number') }}</span>
                            <div class="invalid-feedback">
                                {{ translate('please_provide_valid_phone_number') }}
                            </div>
                        </div>


                        <div class="text-center my-2">
                            <span class="badge bg-secondary">{{ translate('OR') }}</span>
                        </div>


                        <div class="form-group mb-3">
                            <label for="recover-email">
                                {{ translate('Email') }}
                            </label>
                            <input class="form-control" type="email" name="email"
                                placeholder="{{ translate('enter_your_registered_email') }}">
                            <div class="invalid-feedback">
                                {{ translate('please_provide_valid_email') }}
                            </div>
                        </div>


                        @if ($web_config['firebase_otp_verification'] && $web_config['firebase_otp_verification']['status'])
                            <div class="generate-firebase-auth-recaptcha" id="firebase-auth-recaptcha-{{ rand(111, 999) }}"></div>
                        @elseif(isset($recaptcha) && $recaptcha['status'] == 1)
                            <div class="dynamic-default-and-recaptcha-section">
                                <input type="hidden" name="g-recaptcha-response" class="render-grecaptcha-response"
                                       data-input="#login-default-captcha-section"
                                       data-default-captcha="#login-default-captcha-section" data-action="customer_auth"
                                >
                                <div class="default-captcha-container d-none" id="login-default-captcha-section"
                                     data-placeholder="{{ translate('enter_captcha_value') }}"
                                     data-base-url="{{ route('g-recaptcha-session-store') }}"
                                     data-session="{{ 'default_recaptcha_id_customer_auth' }}">
                                </div>
                            </div>
                        @else
                            <div class="default-captcha-container"
                                 data-placeholder="{{ translate('enter_captcha_value') }}"
                                 data-base-url="{{ route('g-recaptcha-session-store') }}"
                                 data-session="{{ 'default_recaptcha_id_customer_auth' }}">
                            </div>
                        @endif

                        <button class="btn btn--primary mt-3 w-100" type="submit">
                            {{ translate('send_OTP') }}
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


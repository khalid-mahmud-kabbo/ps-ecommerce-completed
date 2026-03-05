@php use Illuminate\Support\Str; @endphp
@extends('layouts.admin.app')

@section('title', translate('draft_customer_List'))

@section('content')
    <div class="content container-fluid">
        <div class="mb-4">
            <h2 class="h1 mb-0 text-capitalize d-flex align-items-center gap-2">
                <img width="20" src="{{dynamicAsset(path: 'public/assets/back-end/img/customer.png')}}" alt="">
                {{translate('draft_customer_List')}}
                <span class="badge badge-soft-dark radius-50">{{ $totalCustomers }}</span>
            </h2>
        </div>



        <div class="card mb-4">
            <div class="card-body">
                <form action="{{ url()->current() }}" method="GET">
                    <div class="row align-items-end g-4">
                        <div class="col-md-4">
                            <label class="form-label">{{translate('Customer_Joining_Date')}}</label>
                            <div class="position-relative">
                                <span class="fi fi-sr-calendar icon-absolute-on-right cursor-pointer"></span>
                                <input type="text" name="joining_date" class="js-daterangepicker-with-range form-control cursor-pointer" value="{{request('joining_date')}}" placeholder="{{ translate('Select_Date') }}" autocomplete="off" readonly>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">{{translate('Status')}}</label>
                            <div class="select-wrapper">
                                <select class="form-select set-filter" name="status">
                                    <option {{ !request()->has('status') ?'selected':''}} disabled>{{ translate('select_status') }}</option>
                                    <option {{ request()->has('status') && request('status') == '' ?'selected':''}} value="">{{ translate('All') }}</option>
                                    <option {{ request('status')  == 'draft'?'selected':''}} value="draft">{{ translate('Pending') }}</option>
                                    <option {{ request('status')  == 'canceled'?'selected':''}} value="canceled">{{ translate('Canceled') }}</option>
                                    <option {{ request('status')  == 'ordered'?'selected':''}} value="ordered">{{ translate('Ordered') }}</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <label class="d-md-block">&nbsp;</label>
                            <div class="d-flex gap-3 justify-content-end">
                                <a href="{{ route('admin.customer.drafts') }}"
                                   class="btn btn-secondary btn-block">
                                    {{ translate('reset') }}
                                </a>
                                <button type="submit" class="btn btn-primary btn-block">{{translate('Filter')}}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>



        <div class="card">
            <div class="card-body">
                <div class="d-flex flex-wrap justify-content-between gap-3 align-items-center mb-4">
                    <h3 class="mb-0">
                        {{translate('draft_customer_List')}}
                        <span class="badge badge-info text-bg-info">{{ $totalCustomers }}</span>
                    </h3>

                    <div class="d-flex gap-3 align-items-center flex-wrap">
                        <form action="{{ url()->current() }}" method="GET">
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="hidden" name="joining_date" value="{{request('joining_date')}}">
                                    <input type="hidden" name="status" value="{{request('status')}}">
                                    <input id="datatableSearch_" type="search" name="searchValue" class="form-control"
                                           placeholder="{{ translate('search_by_Name_or_Email_or_Phone')}}"  aria-label="Search orders" value="{{ request('searchValue') }}">
                                    <div class="input-group-append search-submit">
                                        <button type="submit">
                                            <i class="fi fi-rr-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <a type="button" class="btn btn-outline-primary text-nowrap" href="{{route('admin.customer.draft-export', ['status' => request('status'), 'joining_date' => request('joining_date'),  'searchValue' => request('searchValue')])}}">
                            <img width="14" src="{{dynamicAsset(path: 'public/assets/back-end/img/excel.png')}}" alt="" class="excel">
                            <span class="ps-2">{{ translate('export') }}</span>
                        </a>
                    </div>
                </div>


                <div class="table-responsive datatable-custom">
                    <table class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table w-100">
                        <thead class="thead-light thead-50 text-capitalize">
                            <tr>
                                <th>{{translate('SL')}}</th>
                                <th>{{translate('date')}}</th>
                                <th>{{translate('customer_name')}}</th>
                                <th>{{translate('contact_info')}}</th>
                                <th>{{translate('address')}} </th>
                                <th>{{translate('status')}} </th>
                                <th class="text-center">{{translate('action')}}</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($draft_customers as $key=>$customer)
                            <tr>
                                <td>
                                    {{$draft_customers->firstItem()+$key}}
                                </td>
                                <td>
                                    {{$customer->created_at->format('d M, Y')}}
                                </td>
                                <td>
                                    <a href="#"
                                    class="text-dark text-hover-primary d-flex align-items-center gap-10">
                                        <img src="{{getStorageImages(path:$customer->image_full_url,type:'backend-profile')}}"
                                            class="avatar rounded-circle " alt="" width="40">
                                        {{$customer->name}}
                                    </a>
                                </td>
                                <td>
                                    <div class="mb-1">
                                        <strong><a class="text-dark text-hover-primary"
                                                href="mailto:{{$customer->email}}">{{$customer->email}}</a></strong>

                                    </div>
                                    <a class="text-dark text-hover-primary" href="tel:{{$customer->phone}}">{{$customer->phone}}</a>

                                </td>
                                <td>
                                    <label class="text-dark text-hover-primary">
                                        {{$customer->address ?? 'No Address Found'}}
                                    </label>
                                </td>


                                <td>
                                    <label class="text-dark text-hover-primary">
                                        {{ucfirst($customer->status)}}
                                    </label>
                                </td>


                                <td>

                                    <div class="d-flex justify-content-center gap-2">
                                        <a title="{{translate('view')}}"
   class="btn btn-outline-info icon-btn"
   href="javascript:"
   data-toggle="modal" 
   data-target="#updateStatusModal"
   onclick="openStatusModal('{{$customer['id']}}', '{{$customer['status']}}')">
    <i class="fi fi-rr-edit"></i>
</a>
                                        @if($customer['id'] != '0')
                                            <a title="{{translate('delete')}}"
                                            class="btn btn-outline-danger delete icon-btn delete-data" href="javascript:"
                                            data-id="customer-{{$customer['id']}}">
                                            <i class="fi fi-rr-trash"></i>
                                            </a>
                                        @endif
                                    </div>

                                    
                                    <form action="{{route('admin.customer.deleteDraft',[$customer['id']])}}"
                                        method="post" id="customer-{{$customer['id']}}">
                                        @csrf @method('delete')
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="table-responsive mt-4">
                    <div class="px-4 d-flex justify-content-lg-end">
                        {!! $draft_customers->links() !!}
                    </div>
                </div>
                @if(count($draft_customers)==0)
                    @include('layouts.admin.partials._empty-state',['text'=>'no_customer_found'],['image'=>'default'])
                @endif
            </div>
    </div>
    </div>


    <div class="modal fade" id="updateStatusModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document"> 
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{{translate('Update_Draft_Status')}}</h5>
            
            </div>
            <form action="{{route('admin.customer.update-draft-status')}}" method="post">
                @csrf
                <div class="modal-body">
                    <input type="hidden" name="id" id="draft_id">
                    <div class="form-group">
                        <label for="status">{{translate('Select_Status')}}</label>
                            <select class="form-select set-filter" name="status" id="draft_status">
                                    <option {{ !request()->has('status') ?'selected':''}} disabled>{{ translate('select_status') }}</option>
                                    <option {{ request('status')  == 'draft'?'selected':''}} value="draft">{{ translate('Pending') }}</option>
                                    <option {{ request('status')  == 'canceled'?'selected':''}} value="canceled">{{ translate('Canceled') }}</option>
                                    <option {{ request('status')  == 'ordered'?'selected':''}} value="ordered">{{ translate('Ordered') }}</option>
                                </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="modal-footer">
    <button type="button" class="btn btn-secondary" 
            data-dismiss="modal" 
            data-bs-dismiss="modal">
        {{translate('Close')}}
    </button>
    <button type="submit" class="btn btn-primary">{{translate('Update')}}</button>
</div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@push('script')
    <script type="text/javascript">
        changeInputTypeForDateRangePicker($('input[name="order_date"]'));
        changeInputTypeForDateRangePicker($('input[name="customer_joining_date"]'));
    </script>

    <script>
    function openStatusModal(id, currentStatus) {
        $('#draft_id').val(id);
        $('#draft_status').val(currentStatus).change();
        $('#updateStatusModal').modal('show');
    }

    // Add this to ensure the close buttons work manually if needed
    $(document).ready(function() {
        $('[data-dismiss="modal"], [data-bs-dismiss="modal"]').on('click', function() {
            $('#updateStatusModal').modal('hide');
        });
    });
</script>
@endpush

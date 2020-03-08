@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif


 <div class="login-popup">
                    <div class="col-sm-6 col-md-3 m-t-30 login-popup" id="popupForm">

                        <!-- <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;"> -->
                        <div id="myModal" class="modal fade  " tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog  modal-catalouge">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3 catalouge-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fa fa-key mr-1"></i> <br> {{__('enter_code')}}</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#panel8" role="tab"><i class="fa fa-question mr-1"></i> <br>{{__('ask_code')}}</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="modal-body">
                                        <div class="tab-content">
                                            <div class="tab-pane fade in  active" id="panel7" role="tabpanel">
                                                <form action="{{url('/check-code')}}" id="request-check-code" method="post">
    
                                                    @csrf

                                                    <input type="hidden" id="modalLRInput10id" name="cat_id" value="">
                                                    <div class="modal-body mb-1">
                                                        <div class="md-form form-sm mb-5">
                                                            <i class="fa fa-user-secret" aria-hidden="true"></i>
                                                            <input type="hidden"  name="id" placeholder=" =Id " value="" class="form-control form-control-sm validate catalouge-inputs">
                                                            <input type="text" required   id="modalLRInput10" name="code" placeholder="Code " class="form-control form-control-sm validate catalouge-inputs">
                                                        </div>
                                                        <div class="text-center mt-2">
                                                            <button id="sub_code" class="btn btn-info btn-send-catalouges ">{{__('Download')}}</button>
                                                        </div>
    
                                                        <div class="wrong hide-warning" id="msg-res">
                                                            <div role="alert">
                                                                <p class="warning-code" >
                                                                    {{__('msg_warning_wrong_code')}}
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="tab-pane fade" id="panel8" role="tabpanel">
                                                <form action="{{url('/request-code')}}" id="request-code" method="post">
    
                                                    @csrf
                                                                                                         <input type="hidden" name="country-ip" id="country-ip">


                                                    <input type="hidden" name="cat_id" id="cat-id-request" value="">
                                                    <div class="modal-body">
                                                        <div class="md-form form-sm mb-5 col-sm-6 col-md-6 col-xs-12 ">
                                                            <input type="text" required   name="name" placeholder="Name " class="form-control form-control-sm validate catalouge-inputs">
                                                        </div>
                                                        <div class="md-form form-sm mb-5 col-sm-6 col-md-6 col-xs-12">
                                                            <input type="email" required   name="email" placeholder="Email " class="form-control form-control-sm validate catalouge-inputs">
                                                        </div>
                                                        <div class="md-form form-sm mb-5 col-sm-6 col-md-6 col-xs-12">
                                                            <input type="text" required   name="company" placeholder="Company " class="form-control form-control-sm validate catalouge-inputs">
                                                        </div>
                                                        <div class="md-form form-sm mb-5 col-sm-6 col-md-6 col-xs-12">
                                                            <input type="tele" required   name="tel" placeholder="Telephone " class="form-control form-control-sm validate  catalouge-inputs">
                                                        </div>
                                                        <div class="md-form form-sm mb-5 col-sm-12 col-md-12 col-xs-12 ">
                                                            <select name="country" required   id="country" class="required forms_input">
                                                                    <option value="" style="color: #999;" disabled selected>{{__('Select your Country')}}</option>
                                                                    @foreach($data["continents"] as $item)
                                                                    <option value="{{$item->name}}">{{$item->name}}</option>
                    
                                                                    @endforeach
                                                                    
                                                                </select>
                                                        </div>
                                                        <div class="text-center mt-2">
                                                            <button type="submit" name="submit" class="btn btn-info btn-send-catalouges">{{__('Send')}}</button>
                                                        </div>

                                                        <div class="wrong hide-warning" id="alert-msg-check">
                                                            <div role="alert">
                                                                <p class="alert alert-success" >
                                                                     {{__('msg_success_request_download')}}
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
    
                        </div>
                    </div>
                </div>
<section class="breadcrumb_section text-center section_padding"  style="background:url({{url(''.$data['cover']->image)}})">
    <ul class="breadcrumb">
        <li>
            <a href="{{url('/')}}">{{__('Home')}}</a>
        </li>
    </ul>
    <h1>{{$data["label"]}}</h1>
</section>
<!--end .breadcrumb_section-->
<!--===========================
        End Breadcrumb
===========================-->
<div class="grey-bg">
<div class="container cata-list">
    <div class="row footer-padding ">


        @foreach($data["catalogues"] as $item)
        <div class="col-md-3 col-sm-6 prod-box">
                <div class="service_box">
                    <div class="service_img">
                        <div>
                            <img src="{{url(''.$item->image)}}" class="imagel img-responsive"" alt="" />
                        </div>
                    </div>
                    <div class="service_details">
<h2>{{$item->name}}</h2>
                        <div class="limit_char_ul">
                            <p class="">
                              {{str_replace("&nbsp;", "", strip_tags(str_limit($item->breif, $limit = 250, $end = '...')))}}

                            </p>
                        </div>
                        <input type="button"  class="btn-yellow" value="{{__('Download')}}" data-id="{{$item->id}}" id="sh-pop" data-toggle="modal" data-target="#myModal">
                    </div>
                </div>
        </div>

        @endforeach


       
    </div>
</div>
</div>



@endsection
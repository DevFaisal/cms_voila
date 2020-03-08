@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif


<div class="section_padding details-cata">
        <div class="container">
            <div class="row">
                <h1 class="faq-title">{{$data["catalogue"]->name}}</h1>
                <div class="fr catlog_img"><img src="{{url(''.$data['catalogue']->image)}}" class="img-responsive">
                    <div class="fr">
                        <a href="#" id="my-button">
                            <div class="download">
                            </div>
                        </a>
                    </div>
                    <div class="fr" style="width:200px;"><a
                            href="{{url('/catalogues')}}">{{__('back to catalogs')}}</a></div>
                </div>
                <div class="fl catlog_des">
                {!! $data["catalogue"]->breif !!}
            </div>


            <div class="">
                <p class="text-muted"></p>
                <button type="button" class="btn  waves-effect waves-light open-button btn-yellow catalog-btn" data-toggle="modal" data-target="#myModal"><strong>{{__('Download Catalouge')}} </strong></button>
            </div>
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
                                                    <input type="hidden" name="cat_id" value="{{$data['catalogue']->id}}">
                                                    <div class="modal-body mb-1">
                                                        <div class="md-form form-sm mb-5">
                                                            <i class="fa fa-user-secret" aria-hidden="true"></i>
                                                            <input type="hidden" id="modalLRInput10id" name="id" placeholder=" =Id " value=< ?=$ id class="form-control form-control-sm validate catalouge-inputs">
                                                            <input type="text" id="modalLRInput10" name="code" placeholder="Code " class="form-control form-control-sm validate catalouge-inputs">
                                                        </div>
                                                        <div class="text-center mt-2">
                                                            <button id="sub_code" class="btn btn-info btn-send-catalouges ">{{__('Send')}}</button>
                                                        </div>
    
                                                        <div class="wrong hide-warning" id="alert-msg-check">
                                                            <div role="alert">
                                                                <p class="warning-code" >
                                                                    {{__('Warning - Wrong Code')}}
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="tab-pane fade" id="panel8" role="tabpanel">
                                                <form action="{{url('/request-code')}}" id="request-code" method="post">
    
                                                    @csrf
                                                    <input type="hidden" name="cat_id" value="{{$data['catalogue']->id}}">
                                                    <div class="modal-body">
                                                        <div class="md-form form-sm mb-5 col-sm-6 col-md-6 col-xs-12 ">
                                                            <input type="text" name="full_name" placeholder="Name " class="form-control form-control-sm validate catalouge-inputs">
                                                        </div>
                                                        <div class="md-form form-sm mb-5 col-sm-6 col-md-6 col-xs-12">
                                                            <input type="email" name="email" placeholder="Email " class="form-control form-control-sm validate catalouge-inputs">
                                                        </div>
                                                        <div class="md-form form-sm mb-5 col-sm-6 col-md-6 col-xs-12">
                                                            <input type="text" name="company_name" placeholder="Company " class="form-control form-control-sm validate catalouge-inputs">
                                                        </div>
                                                        <div class="md-form form-sm mb-5 col-sm-6 col-md-6 col-xs-12">
                                                            <input type="tele" name="tel" placeholder="Telephone " class="form-control form-control-sm validate  catalouge-inputs">
                                                        </div>
                                                        <div class="md-form form-sm mb-5 col-sm-12 col-md-12 col-xs-12 ">
                                                            <select name="country" id="country" class="required forms_input">
                                                                    <option value="" style="color: #999;" disabled selected>{{__('Select your Country')}}</option>
                                                                    @foreach($data["continents"] as $item)
                                                                    <option value="{{$item->name}}">{{$item->name}}</option>
                    
                                                                    @endforeach
                                                                    
                                                                </select>
                                                        </div>
                                                        <div class="text-center mt-2">
                                                            <button type="submit" name="submit" class="btn btn-info btn-send-catalouges">{{__('Send')}}</button>
                                                        </div>

                                                        <div class="wrong hide-warning" id="alert-msg">
                                                            <div role="alert">
                                                                <p class="warning-code" >
                                                                    Warning - Success Code
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
                <script>
                    function openForm() {
                        
                        document.getElementById("popupForm").style.display = "block";
                        
                    }

                    function closeForm() {
                        document.getElementById("popupForm").style.display = "none";
                    }
                </script>

            </div>
        </div>
    </div>


@endsection
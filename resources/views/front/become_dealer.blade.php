@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif



<section class="breadcrumb_section text-center section_padding" style="background:url({{url(''.$data['cover']->image)}})">
        <ul class="breadcrumb">
            <li><a href="{{url('/')}}">{{__('Home')}}</a></li>
        </ul>
        <h1>{{__('Distributor')}}/{{__('Customer Information Form')}}</h1>
    </section>
    <!--end .breadcrumb_section-->
    <!--===========================
        End Breadcrumb
===========================-->
    <div class="page_content dealers section_padding contact_us">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="contact-right contact_details">
                        <div class="hero-title-with-shape">
                            <h4 class="heading_with_border">{{__('Become Adealer')}}</h4>
                            <h1>{{__('Becom Adealer Big Title')}}</h1>
                        </div>
                        <!--end .hero-title-with-shape-->
                        <p>{{__('Term 2016 - 2017')}}&nbsp; ({{__('must be filled out completely and printed on company letterhead in order to be processed')}})</p>
                        <div class="contact_location_box">
                            <div class="contact_location_map">
                                <span class="icon-location"></span>
                                <p>
                                    {{__('West Highway San Dimas, USA')}}
                                </p>
                            </div>
                            <!--end .contact_location_map-->
                            <div class="contact_location_map contact_location_call">
                                <span class="icon-contact_call"></span>
                                <p>{{__('help@americanpro.com')}} <br>{{__('+1 909 599-5533')}}</p>
                            </div>
                            <!--end .contact_location_map .contact_location_call-->
                        </div>
                        <!--end .contact_location_box-->
                    </div>
                    <!--end .contact-right .contact_details-->
                </div>
                <!--end .col-md-6-->

                

                <div class="col-md-6 col-sm-6 col-xs-12  ">
                    <!-- </div> -->
                    @if (\Session::has('success'))
                        <div class="alert alert-success alert-page">
                            <ul>
                                <li>{{__('msg_become_a_dealer')}}</li>
                            </ul>
                        </div>
                    @endif
                    <div id="output1" style="width:100%"></div>

                    <form name="subForm" action="{{url('/become_dealer')}}" method="POST">
                    @csrf
                    
                                                                                                         <input type="hidden" name="country-ip" id="country-ip">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Name of entity')}}:<font
                                        size="4" color="#cc0000">*</font>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><input type="text" required   name="entity_name" size="20"
                                        placehloder="{{__('Name of entity')}}"  class="forms_input contact required " value="">
                                    <span class="req_msg">{{__('Required field')}}</span>
                                    <span class="req_msg_e"> {{__('email not valid')}}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Address of entity’s principal place of business or headquarters')}}:<font size="4" color="#cc0000">*</font>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><textarea required  name="entity_address" cols="40" rows="4"
                                        class="forms_area   required " maxlength="500"></textarea><span class="req_msg">{{__('Required field')}}</span>
                                    <p id="f34"></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Years in Business')}}:<font
                                        size="4" color="#cc0000">*</font>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><input required  type="number" min="0" max="100" name="experience" size="20"
                                        placehloder="{{__('Years in Business')}}" class="forms_input contact required " value="">
                                    <span class="req_msg">{{__('Required field')}}</span>
                                    <span class="req_msg_e"> {{__('email not valid')}}</span>
                                </div>
                            </div>
                         
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Website address')}}:</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><input required  type="text" name="website" size="20"
                                        placehloder="{{__('Website address')}}" class="forms_input contact" pattern="http?://.+" value="">
                                    <span class="req_msg">{{__('Required field')}}</span>
                                    <span class="req_msg_e"> {{__('email not valid')}}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">Main email address:<font
                                        size="4" color="#cc0000">*</font>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><input required  type="Text" name="email" size="20"
                                        class="forms_input  required  email" value="">
                                    <span class="req_msg">{{__('Required field')}}</span>
                                    <span class="req_msg_e"> {{__('email not valid')}}</span></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Country Locations of Entity’s offices worldwide')}}:<font size="4" color="#cc0000">*</font>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><input type="text" name="country" size="20"
                                        placehloder="{{__('Country Locations of Entity’s offices worldwide')}}"
                                        class="forms_input contact required " value="">
                                    <span class="req_msg">{{__('Required field')}}</span>
                                    <span class="req_msg_e"> {{__('email not valid')}}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('List worldwide country locations or places where you ship the goods (Final Destination).')}}:</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><textarea name="final_destination" cols="40" rows="4"
                                        class="forms_area  " maxlength="500"></textarea><span class="req_msg">{{__('Required field')}}</span>
                                    <p id="f40"></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Names and titles of entity’s ultimate parent company and individuals with controlling ownership')}}:</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><textarea name="parent_company" cols="40" rows="4"
                                        class="forms_area  " maxlength="500"></textarea><span class="req_msg">{{__('Required field')}}</span>
                                    <p id="f41"></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Names of entity’s subsidiaries if any')}}:</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><textarea required   name="subsidiaries" cols="40" rows="4"
                                        class="forms_area  "  maxlength="500"></textarea><span class="req_msg">{{__('Required field')}}</span>
                                    <p id="f42"></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Names of Entity’s Directors, Senior Management, CFO/CEO, President, Treasurer, General Managers')}}:</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><textarea name="managers" cols="40" rows="4"
                                        class="forms_area  "  maxlength="500"></textarea><span class="req_msg">{{__('Required field')}}</span>
                                    <p id="f43"></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Contact person, phone andfax of Three Business Referenes (e.g. Other U.S. Companies):')}}</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><textarea name="contact_person" cols="40" rows="4"
                                        class="forms_area  " maxlength="500"></textarea><span class="req_msg">{{__('Required field')}}</span>
                                    <p id="f44"></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">Record of any Penalties or
                                    Proceeding Under U.S Export or Sanction Laws:</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><input required   type="text" name="penalty" size="20"
                                        placehloder="Record of any Penalties or Proceeding Under U.S Export or Sanction Laws"
                                        class="forms_input contact" value="">
                                    <span class="req_msg">{{__('Required field')}}</span>
                                    <span class="req_msg_e"> {{__('email not valid')}}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1">{{__('Any Other Relevant Information')}}:</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12"><textarea name="notes" cols="40" rows="4"
                                        class="forms_area  " maxlength="500"></textarea><span class="req_msg">{{__('Required field')}}</span>
                                    <p id="f46"></p>
                                </div>
                            </div>
                            
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <span class="req_msg">{{__('Required field')}}</span></div>
                                </div>
                                <div class="row">
                                    
                                        <input style="float:_lang_algin;" type="submit" name="sub" id="btn"
                                            class="forms_submit_butt forms_submit_butt_event  btn-yellow form-btn  "
                                             value="Send"></div>
                                </div>
                            </div>

                        </div>
                </form>



            </div>

        </div>
    </div>
    </div>

@endsection
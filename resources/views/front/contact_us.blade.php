@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif

<section class="breadcrumb_section text-center section_padding"  style="background:url({{url(''.$data['cover']->image)}})">
    <ul class="breadcrumb">
        <li>
            <a href="{{url('/')}}">{{__('Home')}}</a>
        </li>
    </ul>
    <h1>{{__('contact us')}}</h1>
</section>
<!--===========================
        End Breadcrumb
===========================-->

<!--===========================
        Start Contact Form
===========================-->
<section class="contact_form_area contact_us section_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="contact-right contact_details">
                    <div class="hero-title-with-shape">
                        <h4 class="heading_with_border">Contact with us</h4>
                        <h1>{{__('We offer 24/7 emergency service to all of our customers')}}</h1>
                    </div>
                    <!--end .hero-title-with-shape-->
                    <p>{{__('There are many variations of passages of new lorem ipsum available, but the majority have suffered.')}}</p>
                    <div class="contact_location_box">
                        <div class="contact_location_map">
                            <span class="icon-location"></span>
                            <p>
                                {{$data["info"]->address}}
                            </p>
                        </div>
                        <!--end .contact_location_map-->
                        <div class="contact_location_map contact_location_call">
                            <span class="icon-contact_call"></span>
                            <p>{{$data["info"]->email}}
                                <br>{{$data["info"]->phone}}</p>
                        </div>
                        <!--end .contact_location_map .contact_location_call-->
                    </div>
                    <!--end .contact_location_box-->
                </div>
                <!--end .contact-right .contact_details-->
            </div>
            <!--end .col-md-6-->
            <div class="col-md-6">

            @if (\Session::has('success'))
                        <div class="alert alert-success alert-page">
                            <ul>
                                <li>{{__('msg_contact')}}</li>
                            </ul>
                        </div>
                    @endif

                <div class="contact-right contact-right-style-2 responsive_mt">
                    <form name="subForm" action="{{url('/contact_us')}}" method='POST' id="Qform">
                    @csrf
                                                                                                         
                 <input type="hidden" name="country-ip" id="country-ip">

                    <div class="container">

                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" required   name="name" size="20" placeholder="Name" class="forms_input  required " value="" />
                                    <span class="req_msg">Required field</span>
                                    <span class="req_msg_e">,email not valid</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" required   name="tel" size="20" placeholder="Telephone" class="forms_input required " value="" />
                                    <span class="req_msg">Required field</span>
                                    <span class="req_msg_e">,email not valid</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="Text" required   name="email" size="20" placeholder="Email" class="forms_input required  email" value="" />
                                    <span class="req_msg">Required field</span>
                                    <span class="req_msg_e">,email not valid</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" required   name="country" size="20" placeholder="Country" class="forms_input  required " value="" />
                                    <span class="req_msg">Required field</span>
                                    <span class="req_msg_e">,email not valid</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <textarea name="comment" cols="40" placeholder="Comment" rows="4" class="forms_area" maxlength="500"></textarea>
                                    <span class="req_msg">Required field</span>
                                   
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 forms_titles font1"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <span style="    margin-left: 10px;">How did you hear about us?:</span>
                                    <select name="known_by" placeholder="How did you hear about us?" class="forms_input ">
                                       <option value="Twitter">{{__('Twitter')}}</option>
                                       <option value=" Facebook"> {{__('Facebook')}}</option>
                                       <option value=" Linkedin"> {{__('Linkedin')}}</option>
                                       <option value=" Instagram"> {{__('Instagram')}}</option>
                                       <option value=" Google"> {{__('Google')}}</option>
                                       <option value=" B2B"> {{__('B2B')}}</option>
                                       <option value=" Alibaba"> {{__('Alibaba')}}</option>
                                       <option value=" Surfing the Web"> {{__('Surfing the Web')}}</option>
                                       <option value=" Referral "> {{__('Referral')}} </option>
                                   </select>

                                    <span class="req_msg">Required field</span>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class='key_code_text'>
                                        <input type="submit" name="sub"  id='btn' class="btn btn-ctl " value="Send">
                                    </div>
                                </div>
                            </div>



                        </div>





                    </form>
                </div>
                <!--end .contact-right .contact-right-style-2-->
            </div>
            <!--end .col-md-6-->
        </div>
        <!--end .row-->
    </div>
    <!--end .container-->
</section>
<!--end .contact_form_area-->
<!--===========================
        End Contact Form
===========================-->


@endsection
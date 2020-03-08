@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif

<section class="breadcrumb_section text-center section_padding" style="background:url({{url(''.$data['cover']->image)}})">
<ul class="breadcrumb">
    <li>
        <a href="{{url('/')}}">{{__('Home')}}</a>
    </li>
</ul>
<h1>{{__('Terms & Conditions')}}</h1>
</section>
<!--===========================
        End Breadcrumb
===========================-->

<!--===========================
        Start About Style 3
===========================-->
<section class="about_area section_padding" >
    <div class="container">
        <div class="row">
            <!-- <div class="col-md-6">
                <div class="about_image about-image__updated">
                
                </div>    
            </div>end .col-md-6 -->
            <div class="col-md-12">
            <div class="row">
                <div class="about_details terms">
                    <div class="hero-title-with-shape">

                        <h4 class="heading_with_border">{{__('Terms & Conditions')}}</h4>
                    </div>
                   <div class="">  <p>
                   {!! $data["about_us"]->desc !!}
               </p> </div></div>

                        <!-- <a href="http://voitest.com/amp-new/en/Page2/About-Us" class="btn-yellow">learnMore</a> -->
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
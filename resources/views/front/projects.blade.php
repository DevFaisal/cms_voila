@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif



<section class="breadcrumb_section text-center section_padding" style="background:url({{url(''.$data['cover']->image)}})">
    <ul class="breadcrumb">
        <li>
            <a href="{{url('/')}}">{{__('Home')}}</a>
        </li>
    </ul>
    <h1>{{__('Our projects')}}</h1>
</section>
<!--end .breadcrumb_section-->
<!--===========================
        End Breadcrumb
===========================-->
<div class="grey-bg">
<div class="container">
    <div class="row footer-padding cata-list">


        @foreach($data["projects"] as $item)
        <div class="col-md-4 col-sm-6 prod-box">
            <a href="{{url('/projects/'.$item->id)}}">
                <div class="service_box">
                    <div class="service_img">
                        <div>
                            <img src="{{url(''.$item->image)}}" class="imagel img-responsive" alt="" />
                        </div>
                    </div>
                    <div class="service_details">
                        <h2>{{$item->name}}</h2>
                        <div class="limit_char_ul">
                            <p class="">
                               {{str_replace("&nbsp;", "", strip_tags(str_limit($item->desc, $limit = 250, $end = '...')))}}

                            </p>
                        </div>
                        <input type="button" class="btn-yellow" value="{{__('LEARN MORE')}}">
                    </div>
                </div>
            </a>
        </div>

        @endforeach


       
    </div>
</div>
</div>

@endsection
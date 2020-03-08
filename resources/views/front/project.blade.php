@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif
<section class="breadcrumb_section text-center section_padding" style="background:url({{url(''.$data['cover']->image)}})">
    <ul class="breadcrumb">
        <li>
            <a href="{{url('/')}}">{{__('Home')}}</a>
        </li>
        <li>
            <a href="{{url('/projects')}}">{{__('projects')}}</a>
        </li>
    </ul>
    <h1>{{$data["project"]->name}}</h1>
</section>

    <!--end .breadcrumb_section-->
    <!--===========================
        End Breadcrumb
===========================-->

    <!--===========================
        Start Service Details
===========================-->
    <section class="service_details_area section_padding">
        <div class="container">
            <div class="row">
                        <div class="col-md-4 col-sm-12 col-sm-pull-0 ">
                    <img src="{{url(''.$data['project']->image)}}" class="img-responsive"
                        alt="Service Details Image">
                </div><!-- end .col-md-4 -->
                <div class="col-md-8 col-sm-12 col-sm-push-0 ">
                    <div class="service_details_left">
                        <h1>{{$data["project"]->name}}</h1>
                        <p>

                        {!! $data["project"]->description !!}
                        </p>
                    </div>
                    <!--end .service_details_left-->
                    <div class="row">
                            <div class="owl-carousel project-carousel">
                                @foreach($data["images"] as $item)
                                <div>
                                    <img src="{{url(''.$item->path)}}" class="img-responsive"
                                        alt="{{$data['project']->name}}">
                                </div>

                                @endforeach
                            </div>
                        </div>
                </div>
                <!--end col-md-8-->
    
            </div><!-- end .row -->
     
        </div><!-- end .container -->
    </section><!-- end .service_details_area section_padding -->
    <!--===========================
        End Service Details

@endsection
@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif
<section class="breadcrumb_section text-center section_padding" style="background:url({{url(''.$data['cover']->image)}})" >
    <ul class="breadcrumb">
        <li>
            <a href="{{url('/')}}">{{__('Home')}}</a>
        </li>
        <li>
            <a href="{{url('/news')}}">{{__('news')}}</a>
        </li>
    </ul>
    <h1>{{$data["news"]->name}}</h1>
</section>
<!--===========================
        End Breadcrumb
===========================-->

<!--===========================
        Start Blog Details
===========================-->
<section class="blog_details_section section_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="blog_details_left">
                    <div class="blog_left_box">
                        <div class="bl_share_img">
                        <img src="{{url(''.$data['news']->image)}}" alt="post 1" class="img-responsive">
                        </div><!--end .bl_share_img-->
                        <div class="blog_share_details">
                            <span class="comment_author">{{$data["news"]->date}} </span>
                            {!! $data["news"]->breif !!} <br>
                            {!! $data["news"]->description !!}
                           </div><!--end blog-share-details-->
                    </div><!--end blog-left-box-->
                  
                </div><!--end blog-details-left-->
            </div><!--end col-md-8-->
            <div class="col-md-4">
                <div class="blog_details_right">
                    
                    <div class="blog_right_box mb-30">
                        <div class="latest_post">
                            <h2>{{__('Latest News')}}</h2>
                            <ul>
                                @foreach($data["allNews"] as $item)
                                <li>
                                    <a href="{{url('/news/'.$item->id)}}"><img src="{{url(''.$item->image)}}" alt="post3" class="img-responsive">
                                        {{$item->name}}</a>
                                </li>

                                @endforeach
                            </ul>
                        </div><!--end .latest_post-->
                    </div><!--end .blog_right_box-->
                    
                </div><!--end .blog_details_right-->
            </div><!--end .col-md-4-->
        </div><!--end .row-->
    </div><!--end .container-->
</section><!--end .blog_details_section-->
<!--===========================
        End Blog Details
===========================-->


@endsection
@extends('layout.layout') @section('content') @if($seo) @section('description',
$seo->description_en)
@section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en)
@endif


@if (\Session::has('success'))

<script>
window.scrollTo(0,document.body.scrollHeight);

</script>

@endif

<!--===========================
        Start Header Slider
===========================-->


<section class="header_slider_area owl-carousel">
    


@foreach($data['highlights'] as $key=>$item)
    <div class="header_slider_bg slider_bg3" style="background-image: url({{url(''.$item->image)}});">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                @if($item->name)
                    <p><span class="subtitle_number">0{{$key+1}} {{$item->name}}</span></p>
                @endif
                    @if($item->description)
                    {!! $item->description !!}
                    @endif
                    <div class="slide_button">
                    	
                    	@if($item->link)
                        <a href="{{url(''.$item->link)}}" class="btn-yellow">
                        @endif
                        @if($item->label)
                        {!! $item->label !!}
                        @endif
                        </a>
                    </div><!--end .slide_button-->
                </div><!--end .col-md-6-->
            </div><!--end .row-->
        </div><!--end .container-->
    </div><!--end .header_slider_bg-->


    @endforeach
  
 
</section><!--end .header_slider_area-->
<!--===========================
        End Header Slider
===========================-->

<!--===========================
        Start Feature Service
===========================-->
<section class="section_padding">
<div class="why-american-pro">
    <h2 class="why"> {{__('Why American Pro?')}} </h2>
</div>

<div class="feature_service_area text-center">

@foreach($data["why_us"] as $item)
    <div class="feature_service_box_width" >
       <img src="{{$item->image}}" class="img-responsive">
       @if($item->link)
              <a href="{{url(''.$item->link)}}" target="_blank"> <p>{{$item->desc}}</p></a>

       @endif
       
        @if(!$item->link)
              <a> <p>{{$item->desc}}</p></a>

       @endif
    </div><!--end .feature_service_box_width-->
@endforeach
</div><!--end .feature_service_area-->
</section>
<!--===========================
        End Feature Service
===========================-->

<!--===========================
        Start About
===========================-->
<section class="about_area section_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="about_image about-image__updated" style="background: url({{url(''.$data['about_us']->image)}}) center center no-repeat"></div>
            </div><!--end .col-md-6-->
            <div class="col-md-6">
                <div class="about_details">

                    
                     {{str_replace("&nbsp;", "", strip_tags(str_limit($data["about_us"]->desc, $limit = 800, $end = '...')))}}

                   
                </div><!--end .about_details-->
                 <a href="{{url('/about_us')}}" class="btn-yellow">{{__('LEARN MORE')}}</a>
            </div><!--end .col-md-6-->
        </div><!--end .row-->
    </div><!--end .container-->
</section><!--end .about_area-->
<!--===========================
        End About
===========================-->

<!--===========================
        Start Service
===========================-->
<section class="service_area section_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-section-title text-center">
                    <a href="{{url('/products/')}}"> <h1>{{__('Our Products')}}</h1></a>
                </div><!--end .hero-section-title-->
            </div><!--end .col-md-12-->

            @foreach($data["products"] as $item)
            <div class="col-md-4 col-sm-6">
                <div class="service_box">
                    <div class="service_img">
                        <img src="{{url(''.$item->image)}}" alt="service 1" class="img-responsive">
                        <div class="icon-box">
                            <i class="icon-snow"></i>
                        </div><!-- /.icon-box -->
                    </div><!--end .service_img-->
                    <div class="service_details">
                        <a href="{{url('/products?category='.$item->id)}}"><h2>{{$item->name}}</h2></a>
                        <p>
                   
                    {{str_replace("&nbsp;", "", strip_tags(str_limit($item->breif, $limit = 800, $end = '...')))}}

                     
                            </p>
                        <a href="{{url('/products?category='.$item->id)}}" class="btn-yellow">{{__('LEARN MORE')}}</a>
                    </div><!--end .service_details-->
                </div><!--end .service_box-->
            </div><!--end .col-md-4-->
            @endforeach
        
        </div><!--end .row-->
    </div><!--end .container-->
</section><!--end .service_area-->
<!--===========================
        End Service
===========================-->

<!--===========================
        Start CTA
===========================-->
<section class="call_to_action">
    <div class="container">
        <div class="row row-flex">
            <div class="col-md-9 col-sm-8 col-xs-12">
                <h1>{{__('Want To Know More About US, Take a look at Our Profile')}}</h1>
            </div><!--end .col-md-9-->
            <div class="col-md-3 col-sm-4 col-xs-12 text-right cta_responsive_left">
                <a href="{{url('/about_us')}}" class="btn-gray">{{__('Our Profile')}}</a>
            </div><!--end .col-md-3-->
        </div><!--end .row-->
    </div><!--end .container-->
</section><!--end .call_to_action-->
<!--===========================
        end CTA
===========================-->

<!--===========================
        Start CounterUp
===========================-->
<section class="counterup_area text-center section_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-section-title text-center">
                    <h1>{{__('Projects Speaks')}}</h1>
                </div><!--end .hero-section-title-->
            </div><!--end .col-md-12-->

            @foreach($data["count_projects"] as $item)
            <div class="col-md-4 col-sm-6">
                <div class="counter_box">
                    <!-- <img src="assets/images/shape/about-shape.png" class="number_img_shape" alt="Shape"> -->
                    <span class="counter">{{$item->count}}</span>
                    <p>{{$item->name}}</p>
                </div><!--end .counter_box-->
            </div><!--end .col-md-4-->
      
            @endforeach
        </div><!--end .row-->
    </div><!--end .container-->
</section><!--end .counterup_area-->
<!--===========================
        End CounterUp
===========================-->

<!--===========================
        Start Gallery
===========================-->
<section class="gallery_area">
@foreach($data["projects"] as $item)

    <div class="gallery_width">
        <div class="gallery_fixed_height">
            <img src="{{url(''.$item->image)}}" alt="gallery 1" class="img-responsive">
            <div class="gallery_overlay">
                <h3>{{$item->name}}</h3>
                <a href="{{url('/projects/'.$item->id)}}" class="gallery_icon_btn text-right"><i class="fa fa-angle-right"></i></a>
            </div><!--end .gallery_overlay-->
        </div><!--end .gallery_fixed_height-->
    </div><!--end .gallery_width-->
@endforeach
</section><!--end .gallery_area-->
<!--===========================
        End Gallery
===========================-->

<!--===========================
        Start Testimonial
===========================-->

<!--end .testimonial_area-->
<!--===========================
        End Testimonial
===========================-->

<!--===========================
        Start Clients Logo
===========================-->
<div class="clients_logo_area text-center section_padding">
    <div class="container">
        <h1 class="Clients-header">{{__('Distributors')}} </h1>
        <div class="row">
            
            <div class="clients_logo owl-carousel">
               
               @foreach($data["distributors"] as $item)
                <div class="item">
                @if($item->link)
                    <a href="{{url(''.$item->link)}}" target="_blank">
                        <img src="{{url(''.$item->image)}}" alt="Clients Logos" class="img-responsive">
                    </a>
                 @else
                 <a>
                        <img src="{{url(''.$item->image)}}" alt="Clients Logos" class="img-responsive">
                    </a>
                 @endif
                 
                </div><!--end .item-->

                @endforeach
            </div><!--end .clients_logo-->
        </div><!--end .row-->
    </div><!--end .container-->
</div><!--end .clients_logo_area-->
<!--===========================
        End Clients Logo
===========================-->

<!--===========================
        Start CTA
===========================-->
<section class="cta_style_2_area">
 <div>
        <a class="cat" href="{{url('/catalogue_type')}}">
        <h2> {{__('Download Our Catalogs')}} </h2> 
        <button id="home_catalogue" class="btn-yellow cat" value="Download now">{{__('DOWNLOAD NOW')}} </button>
    </a>
    </div>

    <!--<div class="cta_style_2_img_left cta_style_2_img_right"></div>
    <div class="cta_style_2_left"> -->
        <!-- <div class="catalogue">
                <img src="assets/images/cat1.jpg" alt="blog 1" class="img-responsive">  
            </div> -->
      <!--  <h1>  AP-Fan-Coil </h1>
        <p>Catalogue</p>
        <img class="left-arrow" src="assets/images/arrow.png" alt="blog 1">     -->   
        <!-- <i class="fa fa-long-arrow-left"></i> -->
    <!--end .cta_style_2_left-->
   <!-- </div>
    <div class="cta_style_2_left cta_style_2_right text-right">
        <h1> AP Commercial </h1>
        <p> Catalogue</p>
        <img class="right-arrow" src="assets/images/arrow-point-to-right.png" alt="blog 1" class="img-responsive"> 
      <!-- <i class=" fa fa-long-arrow-right"></i>  -->
   <!-- </div>-->
    <!--end .cta_style_2_left .cta_style_2_right-->
</section><!--end .cta_style_2_area-->
<!--===========================
        End CTA
===========================-->

<!--===========================
        Start Blog
===========================-->
<section class="blog_share_area section_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-section-title text-center">
                     <a href="{{url('/news/')}}"> <h1>{{__('News')}}</h1></a>
                </div><!--end .hero-section-title-->
            </div><!--end .col-md-12-->
            @foreach($data["news"] as $item)
            <div class="col-md-4 col-sm-6">
                <div class="blog_share_box">
                    <div class="bl_share_img">
                        <img src="{{url(''.$item->image)}}" alt="blog 1" class="img-responsive">
                    </div><!--end .bl_share_img-->
                    <div class="blog_share_details">
                        <h1><a href="{{url('/news/'.$item->id)}}">{{$item->name}}</a></h1>
                        <p>
                      {{str_replace("&nbsp;", "", strip_tags(str_limit($item->breif, $limit = 250, $end = '...')))}}

                        
                        
                        </p>
                    </div><!--end .blog_share_details-->
                    <a href="{{url('/news/'.$item->id)}}" class="btn-yellow">{{__('LEARN MORE')}}</a>
                </div><!--end .blog_share_box-->
            </div><!--end .col-md-4-->
            @endforeach
            <div class="col-sm-12 see-more">
        </div>
        </div><!--end .row-->
    </div><!--end .container-->
</section><!--end .blog_share_area-->
<!--===========================
        End Blog
===========================-->

@endsection
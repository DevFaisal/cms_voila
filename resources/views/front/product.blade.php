@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif
<div class="page_content section_padding product-d">
    <div class="container">
        <div class="row">
            <section class="service_details_area section_padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="service_details_left">
                            
<!--<div>
                                <a href="{{url('/products?category='.$data['product']->category_id)}}">
                                <p style="color:red">{{__('category :')}} <span class="comment_author"> {{$data["product"]->category_name}}</span></p></a>

                                <a href="{{url('/products?category='.$data['product']->category_id)}}">
                                <p style="color:red">{{__('category :')}} <span class="comment_author"> {{$data["product"]->category_name}}</span></p></a>
                                                                <a href="{{url('/products?category='.$data['product']->category_id)}}">
                                <p style="color:red">{{__('category :')}} <span class="comment_author"> {{$data["product"]->category_name}}</span></p></a> 
 
                                
</div>-->
<div class="path">
                <ul>
                    <li>
                        <a href="{{url('/products')}}">Products</a>
                        <span class="breadcrumbdivider" aria-hidden="true"> > </span>
                    </li>
                    <li>
                        <a href="{{url('/products?category='.$data['product']->category_id)}}">{{$data["product"]->category_name}}</a>
                        <span class="breadcrumbdivider" aria-hidden="true"> > </span>

                    </li>
                     <li>
                        <a href="">{{$data["product"]->name}}</a>
                    </li>
                </ul>
            </div>
            
                                <h1>{{$data["product"]->name}}</h1>
                                <div class="model-p">{{__('model')}} <span class="comment_author">  {!! $data["product"]->model !!}</span></div> 
                             
                                <a class="zoombox" href="{{url(''.$data['product']->image)}}" target="_blank">
                                    <img src="{{url(''.$data['product']->image)}}" alt="prod1" class="img-responsive">

                                </a>
                            </div>
                        

                        </div>
                        <div class="col-md-4">
                        <div class="blog_details_right">
                            
                            <div class="blog_right_box mb-30">
                                <div class="latest_post">
                                    <h2>{{__('Related Products')}}</h2>
                                    <ul>
                                        @foreach($data["products"] as $item)
                                        <li>
                                            <a href="{{url('/products/'.$item->id)}}"><img src="{{url(''.$item->image)}}" alt="post 3" class="img-responsive">
                                                {{$item->name}}</a>
                                        </li>

                                        @endforeach
                                    </ul>
                                </div><!--end .latest_post-->
                                <div class="b-to-cat">
                                <a class="btn-yellow" href="{{url('products?category='.$data['product']->category_id)}}">{{__('Back To Category')}}</a>
                                </div>
                            </div><!--end .blog_right_box-->
                            
                        </div><!--end .blog_details_right-->
                    </div><!--end .col-md-4-->

                    </div><!-- end .row -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                        <div>

@if($data['product']->file)
<a id="details-download" href="{{url(''.$data['product']->file)}}" target="_blank" class="download-prod-btn">
<i class="fa fa-file-pdf-o" aria-hidden="true"></i> <span>{{__('Product Specification')}}</span>
</a>

@endif


                                   <div class="breif-pp">
                                    <p>{!! $data["product"]->breif !!}</p>
                                                                 
                                </div>
</div>
                            <div class="panel-group" id="accordion">
                                <div class="panel">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#features">{{__('Products Features')}}</a>
                                    </h4>
                                  </div>
                                  <div id="features" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        {!! $data["product"]->features !!}
                                    </div>
                                  </div>
                                </div>
                                <div class="panel">
                                    <div class="panel-heading">
                                      <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#technical">{{__('Products Techniacals')}}</a>
                                      </h4>
                                    </div>
                                    <div id="technical" class="panel-collapse collapse">
                                      <div class="panel-body">
                                        {!! $data["product"]->technical !!}
                                      </div>
                                    </div>
                                  </div>
                             
                              </div>
  
</div>
                        </div>
                </div>
            </section>
        </div>
    </div>
</div>


@endsection
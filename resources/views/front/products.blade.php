@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif



<section class="breadcrumb_section text-center section_padding" style="background:url({{url(''.$data['cover']->image)}})">
    <ul class="breadcrumb">
        <li>
            <a href="{{url('/')}}">{{__('Home')}}</a>
        </li>
    </ul>
    <h1>{{__('Our Products')}}</h1>
</section>
<!--end .breadcrumb_section-->
<!--===========================
        End Breadcrumb
===========================-->
<div class="grey-bg">
<div class="container cata-list">

<div class="row">
<div class="col-sm-12">
       <form id="filter-products" autocomplete="off" action="{{url('/getProductsByFilter')}}" method="get">

       <ul class="filter-prod">
            <input type="hidden" id="cat-id" name="category">
                   @if(count($data["categories_filter"])==0)
                    <li class="li-select">


                    <select class="base-categories"  data-level="1">
                    <option value="-1"    selected>{{__('All Categories')}}</option>
                    

                        @foreach($data["base_categories"] as $item)
                        <option value="{{$item->id}}" >{{$item->name}}</option>
                        @endforeach
                    </select>
                      </li>
                    @else
                    <?php $c=1;
                    
                    
                    
                     ?>
			@for ($i = $data["max_level"]; $i >=0 ; $i--)
			
			 <li class="{{($i==$data['max_level'])?'li-select' : 'li-select li-rem'}}">

			<select class="base-categories"  data-level="{{$c}}">
		           <option value="{{($c==1)?'-1' : '-2'}}"  >{{($c==1)?__('All Categories') : __('SubCateogry')}}</option>

			    @foreach($data["categories_filter"] as $item)
			    	@if($i==$item->level)
		                    
		
		                        <option value="{{$item->id}}" {{($item->selected==1)?'selected':''}}>{{$item->name_en}}</option>
			    	
			    	@endif
			    @endforeach
			</select>
			</li>
			<?php $c++; ?>

			@endfor
                    @endif
              
               
              
		<li class="li-select ll" id="allprod">
                    <a href="{{url('/products')}}"  id="prodall" class="search-prod-btn">{{__('All Products')}}</a>     
                </li>

            </ul>
       </form>
</div>
<div class="col-sm-12">
<span class="spanres"> Products of ({{count($data["products"])}} of {{$data["count_products"]}}) </span>
    </div> </div>
    <div class="row footer-padding text-center">


        @foreach($data["products"] as $item)
        <div class="col-md-4 col-sm-6 prod-box">
            <a href="{{url('/products/'.$item->id)}}">
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
                               
                                                                {{str_replace("&nbsp;", "", strip_tags(str_limit($item->breif, $limit = 250, $end = '...')))}}

                            </p>
                        </div>
                        <input type="button" class="btn-yellow" value="{{__('LEARN MORE')}}">
                    </div>
                </div>
            </a>
        </div>

        @endforeach

{{ $data["products"]->links() }}

       
    </div>
        <div class='alert alert-success {{count($data["products"])==0 ?"":"hide"}}' id="msg-res">{{__('No Result')}}</div>

</div>

</div>
@endsection
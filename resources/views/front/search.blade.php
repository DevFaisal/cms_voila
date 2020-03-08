@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif



<section class="breadcrumb_section text-center section_padding" >
    <ul class="breadcrumb">
        <li>
            <a href="{{url('/')}}">{{__('Home')}}</a>
        </li>
    </ul>
    <h1>{{__('Search')}}</h1>
</section>
<!--end .breadcrumb_section-->
<!--===========================
        End Breadcrumb
===========================-->



    <div class="page_content search">
        <div class="container">
            <div class="row">
                <h1 class="title cb">{{__('SearchResults')}}</h1>
                 
                @if(count($products)> 0)
                <div class="subTitle"> {{__('Total Results in Products')}} ({{count($products)}})</div>

                    @foreach($products as $item)
                    <div class="search_title cb"><a href="{{url('/products/'.$item->id)}}"> {{$item->name}}</a></div>

                    @endforeach
                <hr>
                @endif


                @if(count($categories)> 0)
                <div class="subTitle"> {{__('Total Results in categories')}} ({{count($categories)}})</div>

                    @foreach($categories as $item)
                    <div class="search_title cb"><a href="{{url('/products?category='.$item->id)}}"> {{$item->name}}</a></div>

                    @endforeach
                <hr>
                @endif


               


                @if(count($projects)> 0)
                <div class="subTitle"> {{__('Total Results in projects')}} ({{count($projects)}})</div>

                    @foreach($projects as $item)
                    <div class="search_title cb"><a href="{{url('/projects/'.$item->id)}}"> {{$item->name}}</a></div>

                    @endforeach
                <hr>
                @endif


              
            </div>
        </div>
    </div>
@endsection
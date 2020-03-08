@extends('layout.layout') @section('content') @if($seo) @section('description', $seo->description_en) @section('keywords',
$seo->keywords_en) @section('author', $seo->author_en) @section('title', $seo->title_en) @endif

<script>
        function showAnser(n){
            $('.questions div div:nth-child(2)').each(function() {
                $(this).slideUp(400);		
            })
            $('.questions div div:first-child').each(function() {
                $(this).addClass('questions1').removeClass('questions2');
            })
            if($('#a'+n).is(':visible')){
                $('#a'+n).hide(400)
                // $('#q'+n).addClass('questions1').removeClass('questions2');
            }else{
                $('#a'+n).slideDown(400);
                //  $('#q'+n).addClass('questions2').removeClass('questions1');
            }
        }
        </script>

<section class="breadcrumb_section text-center section_padding" style="background:url({{url(''.$data['cover']->image)}})">
    <ul class="breadcrumb">
        <li>
            <a href="{{url('/')}}">{{__('Home')}}</a>
        </li>
    </ul>
    <h1>{{__('FAQ')}}</h1>
</section>
<!--end .breadcrumb_section-->
<!--===========================
        End Breadcrumb
===========================-->
<div class="cata-list">
<div class="container">
<div class="row">
<div class="questions">

@foreach($data["faq"] as $item)
    <div onClick="showAnser({{$item->id}})">
        <div  id="q{{$item->id}}" class="questions1">{{ $item->question }}</div>
        <div  id="a{{$item->id}}" class="answer" style="display:none;">{!! $item->response !!}</div>
    </div>

@endforeach
</div>

@if (\Session::has('success'))
                        <div class="alert alert-success alert-page">
                            <ul>
                                <li>{{__('msg_success_faq')}}</li>
                            </ul>
                        </div>
                    @endif
<form  name="subForm" action="{{url('/request_faq')}}" method="post" class="qForm" id="question-form">
@csrf
   <input type="hidden" name="country-ip" id="country-ip">

    <div class="add-question">{{__('Add Question')}} </div>
    <textarea name="question" class="required forms_area question-area" required maxlength="500"></textarea>
    <input type="submit" name="sub"  id='btn' class="btn btn-ctl question-btn " value="{{__('Send')}}">    
</form>

</div>
</div>
</div>


@endsection
@extends('fornlayouts.layouts.master')

@section('body.content')

	<div class="col-sm-7">
		<ol class="breadcrumb">
			<li><a href ="\">Trang chủ</a></li>
			<li class   ="active">Tin tức<!--  --></li>
		</ol>

		<div class="row">
			@foreach ($allArticle as $key)
			
				<div class="media">
				  <div class="media-left media-top">
				    <a href="#">
				      <img class="media-object thumbnail" style="width: 200px;" src="/image/{{ $key->image }}" alt="{{ $key->image }}">
				    </a>
				  </div>
				  <div class="media-body">
				    <h4 class="media-heading"><a href="{{ route('index.show_article',$key->id) }}">{{ $key->name }}</a></h4>
				    <p style="font-size: 13px">Cập nhật: {{ $key->updated_at }}</p>
				    {{ $key->summary }}
				    <p style="text-align: right;"><a href="{{ route('index.show_article',$key->id) }}" role="button"><b> Đọc tiếp...</b></a></p>
				  </div>
				</div>
		
			@endforeach
		</div>
		
		<center>
			<div class="row">
				<div class="col-sm-7 col-sm-offset-3">
					{!!$allArticle->render() !!}
				</div>
			</div>
		</center>
	</div>
	
@stop

@section('body.js')
	
@stop

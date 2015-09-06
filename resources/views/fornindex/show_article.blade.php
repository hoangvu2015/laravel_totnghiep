@extends('fornlayouts.layouts.master')

@section('body.content')

	<div class="col-sm-7">
		<ol class="breadcrumb">
			<li><a href ="\">Trang chủ</a></li>
			<li><a href ="{{ route('index.show_all_article') }}">Tin tức</a></li>
			<li class   ="active">Chi tiết tin tức</li>
		</ol>
		
			<h3>{{ $showArticle->name }}</h3>
			<p style="font-size: 13px">Cập nhật: {{ $showArticle->updated_at }}</p>
			<?php
				echo $showArticle->content;
			?>
		
	</div>
	
@stop

@section('body.js')
	
@stop

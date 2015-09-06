@extends('adminlayouts.layouts.master')

@section('title')
	Trang Admin Tin Tức
@stop

@section('body.content')
<center>
<h1>THÊM TIN TỨC</h1>
<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
		
		{!! Form::open([
			'route'=>'article.store',
			'method'=>'POST',
			'files'=>true,
			//'enctype'=>'multipart/form-data',
			'class'=>'form-horizontal'
		]) !!}

			@include('articles._form',['button_name'=>'Thêm'])
				
		{!! Form::close() !!}

	</div>
</div>

</center>
@stop

@section('body.js')
	<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
@stop

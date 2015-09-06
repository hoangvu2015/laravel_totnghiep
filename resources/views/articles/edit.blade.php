@extends('adminlayouts.layouts.master')

@section('title')
	Trang admin cập nhật
@stop

@section('body.content')
<center>

<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
		<h1>CẬP NHẬT TIN TỨC</h1>
		
		{!! Form::model($article,[
			'route'=>['article.update',$article->id],
			'method'=>'PUT',
			'files'=>true,
			'class'=>'form-horizontal'
		]) !!}

			@include('articles._form',['button_name'=>'Cập Nhật'])
				
		{!! Form::close() !!}

	</div>
</div>

</center>
@stop

@section('body.js')
	<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
@stop

@section('body.js')
	<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
@stop

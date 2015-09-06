@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')
<center>

<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
		<h1>CẬP NHẬT</h1>
		@if (count($errors) > 0)
						<div class="alert alert-danger">
							<strong>Whoops!</strong> There were some problems with your input.<br><br>
							<ul>
								@foreach ($errors->all() as $error)
									<li>{{ $error }}</li>
								@endforeach
							</ul>
						</div>
		@endif
		{!! Form::model($product,[
			'route'=>['product.update',$product->id],
			'method'=>'PUT',
			'files'=>true,
			//'enctype'=>'multipart/form-data',
			'class'=>'form-horizontal'
		]) !!}

			@include('products._form',['button_name'=>'Cập Nhật'])
				
		{!! Form::close() !!}

	</div>
</div>

</center>
@stop

@section('body.js')
	<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
@stop
@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')
<center>
<h1>THÊM KHÁCH HÀNG</h1>
<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
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
		{!! Form::open([
			'route'=>'customer.store',
			'method'=>'POST',
			'files'=>true,
			//'enctype'=>'multipart/form-data',
			'class'=>'form-horizontal'
		]) !!}

			@include('customers._form',['button_name'=>'Thêm'])
				
		{!! Form::close() !!}

	</div>
</div>

</center>
@stop


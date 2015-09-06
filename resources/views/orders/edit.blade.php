@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')
<center>

<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
		<h1>CẬP NHẬT ĐƠN HÀNG</h1>
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
		{!! Form::model($order,[
			'route'=>['order.update',$order->id],
			'method'=>'PUT',
			'class'=>'form-horizontal'
		]) !!}

			@include('orders._form',['button_name'=>'Cập nhật'])
				
		{!! Form::close() !!}

	</div>
</div>

</center>
@stop


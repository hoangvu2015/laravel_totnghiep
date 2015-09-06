@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')
<center>
<h1>CẬP NHẬT PHƯƠNG THỨC VẬN CHUYỂN</h1>
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
		{!! Form::model($ship,[
			'route'=>['ship.update',$ship->id],
			'method'=>'PUT',
			'class'=>'form-horizontal'
		]) !!}

			@include('ships._form',['button_name'=>'Cập nhật'])
				
		{!! Form::close() !!}

	</div>
</div>

</center>
@stop


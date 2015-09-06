@extends('adminlayouts.layouts.master')

@section('title')
	Pages Update Origins
@stop

@section('body.content')
<center>
<h1>CẬP NHẬT XUẤT XỨ</h1>
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
		{!! Form::model($origin,[
			'route'=>['origin.update',$origin->id],
			'method'=>'PUT',
			'files'=>true,
			//'enctype'=>'multipart/form-data',
			'class'=>'form-horizontal'
		]) !!}

			@include('origins._form',['button_name'=>'Cập nhật'])
				
		{!! Form::close() !!}

	</div>
</div>

</center>
@stop


@extends('adminlayouts.layouts.master')

@section('title')
	Pages Update Categories
@stop

@section('body.content')
<center>
<h1>CẬP NHẬT LIÊN HỆ</h1>
<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
	
		
		{!! Form::model($contact,[
			'route'=>['contact.update',$contact->id],
			'method'=>'PUT',
			'files'=>true,
			//'enctype'=>'multipart/form-data',
			//'class'=>'form-horizontal'
		]) !!}

			

			<div class="form-group">
				<h3>{!! Form::label('name', 'Tên KH:',['class'=>'label label-default col-sm-3']) !!}{{ $contact->name }}</h3>
				
			</div>
				

			<div class="form-group">
				<h3>{!! Form::label('email', 'Email:',['class'=>'label label-default col-sm-3']) !!}{{ $contact->email }}</h3>
				
			</div>


			<div class="form-group">
				<h3>{!! Form::label('subject', 'Chủ đề:',['class'=>'label label-default col-sm-3']) !!}{{ $contact->subject }}</h3>
				
			</div>
			

			<div class="form-group">
				<h3>{!! Form::label('message', 'Tin nhắn:',['class'=>'label label-default col-sm-3' ]) !!}{{ $contact->message }}</h3>
				
			</div>

			<div class="form-group">
				<h3>{!! Form::label('status', 'Trạng Thái:',['class'=>'label label-default col-sm-5' ]) !!}</h3>
				{!! Form::checkbox('status', null, '0',['class'=>'checkbox-inline']) !!}
			</div>
			<br/><br/><br/><br/>
			<div class="form-group">
				{!! Form::submit('Cập nhật',['class'=>'btn btn-primary']) !!}
			</div>

				
		{!! Form::close() !!}

	</div>
</div>

</center>
@stop


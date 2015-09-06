@extends('fornlayouts.layouts.master') 

@section('body.content')
	<div class="col-sm-7">
	<ol class="breadcrumb">
	  <li><a href ="\">Trang Chủ</a></li>
	  <li class="active">Liên Hệ</li>
	</ol>
	<center>
		<h1>LIÊN HỆ</h1>
		@if(isset($error))
			<p style="color:red;">{{ $error }}</p>
		@endif
	</center>
		{!! Form::open([
			'route'=>'contact.index',
			'method'=>'POST',
			'class'=>'form-horizontal',

		]) !!}

		<div class="form-group">
		 	<h4> {!! Form::label('name','Tên: ',['class'=>'control-label col-sm-3', 'required'=> 'true']) !!}</h4>
		    <div class="col-sm-6">

			    {!! Form::text('name', null, ['class'=>'form-control','placeholder'=>"Tên", 'required'=> 'true']) !!}
			    @if ($errors->has('name'))
			    	<p style="color:red;">{!!$errors->first('name')!!}</p>
			    @endif
		    </div>
	  	</div>


		<div class="form-group">
		 	<h4> {!! Form::label('email','Email: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-6">

			    {!! Form::email('email', null, ['class'=>'form-control','placeholder'=>"Email", 'required'=> 'true']) !!}
			    @if ($errors->has('email'))
			    	<p style="color:red;">{!!$errors->first('email')!!}</p>
			    @endif
		    </div>
	  	</div>

	  	<div class="form-group">
		 	<h4> {!! Form::label('subject','Chủ Đề: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-6">

			    {!! Form::text('subject', null, ['class'=>'form-control','placeholder'=>"Chủ Đề", 'required'=> 'true']) !!}
			    @if ($errors->has('subject'))
			    	<p style="color:red;">{!!$errors->first('subject')!!}</p>
			    @endif
		    </div>
	  	</div>

		<div class="form-group">
		 	<h4> {!! Form::label('message','Tin Nhắn: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-6">

			    {!! Form::textarea('message', null, ['placeholder'=>"Tin Nhắn", 'required'=> 'true']) !!}
			    @if ($errors->has('message'))
			    	<p style="color:red;">{!!$errors->first('message')!!}</p>
			    @endif
		    </div>
	  	</div>

	  <div class="form-group"> 
	     <div class="col-sm-offset-5 col-sm-2">
	    	 {!! Form::submit('Gửi', ['style'=>'display: inline;','class'=>'btn btn-danger']) !!}
	    	
	    </div>

	    	 
	   
	  </div>
		{!! Form::close() !!}
	</div><!--div col-sm-7-->

@stop


			

@section('body.js')
	
	<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>

@stop

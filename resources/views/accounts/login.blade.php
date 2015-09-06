@extends('fornlayouts.layouts.master') 

@section('body.content')
	<div class="col-sm-7">
	<ol class="breadcrumb">
	  <li><a href ="\">Trang Chủ</a></li>
	  <li class="active">Đăng Nhập</li>
	</ol>
	<center>
		<h1>ĐĂNG NHẬP</h1>
		@if(isset($error))
			<p style="color:red;">{{ $error }}</p>
		@endif
	</center>
		{!! Form::open([
			'url'=>'auth/login',
			'method'=>'POST',
			'class'=>'form-horizontal'
		]) !!}

		<div class="form-group">
		 	<h4> {!! Form::label('email','Email: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-6">

			    {!! Form::email('email', null, ['class'=>'form-control','placeholder'=>"Email"]) !!}
			    @if ($errors->has('email'))
			    	<p style="color:red;">{!!$errors->first('email')!!}</p>
			    @endif
		    </div>
	  	</div>

		<div class="form-group">
		 	<h4> {!! Form::label('password','Mật Khẩu: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-6">
			    {!! Form::password('password',['class'=>'form-control','placeholder'=>"Mật Khẩu"]) !!}
			     @if ($errors->has('password'))<p style="color:red;">{!!$errors->first('password')!!}</p>@endif
		    </div>
	  	</div>

	  	<div class="form-group">
		    <div class="col-sm-6 col-sm-offset-3">
			    {!! Form::checkbox('remember',null,'0',['class'=>'checkbox-inline']) !!}
				{!! Form::label('remember','Ghi Nhớ') !!}
			     
		    </div>
	  	</div>
		
		<div class="form-group">
		    <div class="col-sm-6 col-sm-offset-3">
			    <p>Bạn chưa có tài khoản? <a href="/accounts/registered">Đăng Ký</a></p>
			    <p>Bạn quên mật khẩu? <a href="#">Lấy lại mật khẩu</a></p>
			     
		    </div>
	  	</div>

	  	<br/>
	  <div class="form-group"> 
	     <div class="col-sm-offset-5 col-sm-2">
	    	 {!! Form::submit('Đăng nhập', ['class'=>'btn btn-danger']) !!}
	    </div>
	  </div>
		{!! Form::close() !!}
	</div><!--div col-sm-7-->

@stop


			

@section('body.js')
	<script type="text/javascript" src="{{ asset('bower_components/bootstrap/dist/js/bootstrap.js') }}"></script>
	<script type="text/javascript" src="{{ asset('bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('bower_components/jquery/dist/jquery.min.js') }}"></script>
@stop

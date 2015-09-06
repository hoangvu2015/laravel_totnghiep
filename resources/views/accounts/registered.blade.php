@extends('fornlayouts.layouts.master') 

@section('body.content')
	<div class="col-sm-7">
	<ol class="breadcrumb">
	  <li><a href ="\">Home</a></li>
	  <li class="active">Registered</li>
	</ol>
	<center><h1>REGISTERED</h1></center>
		<br/><br/>
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
			'url'=>'auth/register',
			'method'=>'POST',
			'class'=>'form-horizontal'
		]) !!}

		<div class="form-group">
		 	<h4> {!! Form::label('email','Email: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-8">
		    {!! Form::email('email', null, ['class'=>'form-control','placeholder'=>"Email"]) !!}  
		    @if ($errors->has('email'))<p style="color:red;">{!!$errors->first('email')!!}</p>@endif  
		    </div>
		    
	  	</div>

		<div class="form-group">
		 	 <h4>{!! Form::label('name','Name: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-8">
		    {!! Form::text('name', null, ['class'=>'form-control','placeholder'=>"Name"]) !!}
		    @if ($errors->has('name'))<p style="color:red;">{!!$errors->first('name')!!}</p>@endif
		     
		    </div>
	  	</div>

	  	<div class="form-group">
		 	<h4> {!! Form::label('password','Password: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-8">
		    {!! Form::password('password',['class'=>'form-control','placeholder'=>"Password"]) !!}
		     @if ($errors->has('password'))<p style="color:red;">{!!$errors->first('password')!!}</p>@endif
		    </div>
	  	</div>
		
		<div class="form-group">
		 	 <h4>{!! Form::label('password_confirm','Confirm Password: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-8">
		    {!! Form::password('password_confirm',['class'=>'form-control','placeholder'=>"Confirm Password"]) !!}
		    @if ($errors->has('password_confirm'))<p style="color:red;">{!!$errors->first('password_confirm')!!}</p>@endif
		    </div>
	  	</div>

	  	<div class="form-group">
		 	<h4> {!! Form::label('phone','Phone: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-8">
		    {!! Form::text('phone', null, ['class'=>'form-control','placeholder'=>"Phone"]) !!}    
		    </div>
		    
	  	</div>

	  	<div class="form-group">
		 	<h4> {!! Form::label('address','Address: ',['class'=>'control-label col-sm-3']) !!}</h4>
		    <div class="col-sm-8">
		    {!! Form::textarea('address', null, ['class'=>'form-control','placeholder'=>"Address"]) !!}    
		    </div>
		    
	  	</div>
<br/>
	  <div class="form-group"> 
	     <div class="col-sm-offset-3 col-sm-2">
	    	 {!! Form::submit('Register', ['class'=>'btn btn-danger']) !!}
	    
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

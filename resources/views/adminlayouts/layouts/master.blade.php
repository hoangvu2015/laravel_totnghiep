<!DOCTYPE html>
<html>
<head>
	<title>@yield('title')</title>



	
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/css/app.css"> <!-- {{-- css rieng cua chung ta --}} -->
	@yield('head.css')
</head>
<body>

	@include('adminlayouts.partials.navbar')
	<div class="row">
	
		<div class="col-sm-3">
			@include('adminlayouts.partials.leftmenu')
		</div>

		<div class="col-sm-7">
			@yield('body.content')
		</div>

	</div>


	@include('adminlayouts.partials.footer')

	@yield('body.js')
	
	<script type="text/javascript" src="{{ asset('/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
	
	<script type="text/javascript" src="{{ asset('/bower_components/jquery/dist/jquery.min.js') }}"></script>
	
	<script type="text/javascript" src="{{ asset('/bower_components/bootstrap/dist/js/bootstrap.js') }}"></script>
	
	<link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
</body>
</html>
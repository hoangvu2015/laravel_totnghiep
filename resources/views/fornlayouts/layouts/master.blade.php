<!DOCTYPE html>
<html>
<head>
	<title>@yield('title')</title>

	<link rel="stylesheet" type="text/css" href="/css/app.css"> <!-- {{-- css rieng cua chung ta --}} -->
	@yield('head.css')
</head>
<body>

	@include('fornlayouts.partials.navbartop')
	
	<div class="row">
		<div class="col-sm-10 col-sm-offset-1">
			@include('fornlayouts.partials.bannerheader')
		</div>	
	</div>

	<div class="row">
		<div class="col-sm-10 col-sm-offset-1">
			@include('fornlayouts.partials.navbarmenutop')
		</div>	
	</div>

	<div class="row">

		<div class="col-sm-3 col-sm-offset-1">
			@include('fornlayouts.partials.leftmenu')
		</div>	
		
			@yield('body.content')
		
	</div>
	
{{-- 	<div class="row">
		<div class="col-sm-10 col-sm-offset-1">
			@include('fornlayouts.partials.navbarmenutop')
		</div>	
	</div> --}}
	
	<div  class="row">
		<div id="footer_forn" class="col-sm-10 col-sm-offset-1">
			@include('fornlayouts.partials.footer_forn')
		</div>	
	</div>
			

	@yield('body.js')

	<script type="text/javascript" src="{{ asset('bower_components/bootstrap/dist/js/bootstrap.js') }}"></script>
	<script type="text/javascript" src="{{ asset('bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('bower_components/jquery/dist/jquery.min.js') }}"></script>

</body>
</html>
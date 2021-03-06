<nav id="navbarmenutop" class="navbar navbar-default" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a id="icon-home" class="navbar-brand" href="\"><span class="glyphicon glyphicon-home"></span> Trang chủ</a>
	</div>

	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav">
			<li><a href="{{ route('index.show_article',1) }}">GIỚI THIỆU</a></li>
			<li><a href="{{ route('index.showbycategory',0) }}">SẢN PHẨM</a></li>
			<li><a href="{{ route('index.show_all_article') }}">TIN TỨC</a></li>
			<li><a href="{{ route('index.show_article',2) }}">HƯỚNG DẪN MUA HÀNG</a></li>
			<li><a href="{{ route('contact.create') }}">LIÊN HỆ</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			{{-- <li><a href="#">Login </a></li> --}}
			@if(\Auth::check())
				<div class="dropdown">
				  <a class="glyphicon glyphicon-user dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
				   <b> {{ \Auth::User()->name }}</b>
				    <span class="caret"></span>
				  </a>
				  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><span class="glyphicon glyphicon-briefcase"></span> Hồ sơ</a></li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><span class="glyphicon glyphicon-lock"></span> Thay đổi mật khẩu</a></li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="{{ url('/auth/logout') }}"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>
				    
				  </ul>

				</div>
			@else
			<li><a href="/auth/login"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
			<li><a href="/auth/register"><span class="glyphicon glyphicon-pencil"></span> Đăng ký</a></li>
			@endif
			
		</ul>
	</div><!-- /.navbar-collapse -->
</nav>


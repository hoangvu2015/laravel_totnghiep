<nav class="navbar navbar-inverse" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">Laravel Shop</a>
		</div>
	
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			
			<ul class="nav navbar-nav navbar-right">
			
				<li class="dropdown">
					{{-- <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span></span class=" glyphicon glyphicon-user"><span>{{ Auth::user()->name }}<b class="caret"></b></a> --}}

					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				<span class="glyphicon glyphicon-user" aria-hidden="true"></span> {{ Auth::user()->name }} <b class="caret"></b>
					</button>
		
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><span class="glyphicon glyphicon-briefcase"></span> Hồ Sơ</a></li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><span class="glyphicon glyphicon-lock"></span> Thay Đổi Mật Khẩu</a></li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="{{ url('/auth/logout') }}"><span class="glyphicon glyphicon-log-out"></span> Thoát</a></li>
				    
				  </ul>
				</li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</nav>
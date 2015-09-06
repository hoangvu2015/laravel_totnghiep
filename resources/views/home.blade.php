
 @extends('adminlayouts.layouts.master') 

 @section('body.content')
	<center>
		<h2><p>Xin Chào <b>{{ \Auth::user()->name }}</b> Đến Với Trang Quản Trị Admin !!!</p></h2>
	</center>
 @stop
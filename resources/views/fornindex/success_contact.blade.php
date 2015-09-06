@extends('fornlayouts.layouts.master') 

@section('body.content')
	<div class="col-sm-7">
	<ol class="breadcrumb">
	  <li><a href ="\">Trang Chủ</a></li>
	  <li><a href ="{{ route('contact.create') }}">Liên Hệ</a></li>
	  <li class="active">Liên Hệ Thành Công</li>
	</ol>
	<center>
		<h1>LIÊN HỆ THÀNH CÔNG</h1>
		<p>Bạn đã gửi liên hệ thành công !!</p>
		<p>Chúng Tôi sẽ liên hệ bạn sớm nhất có thể, xin cảm ơn bạn !!!</p>
	</center>
		
	</div><!--div col-sm-7-->

@stop


			

@section('body.js')
	
@stop

@extends('fornlayouts.layouts.master') 
@section('body.content')
{{-- <div class="col-sm-3">
	<a id="image-detail" href="#" class="thumbnail"><img src="/image/banner/2.jpg" alt="..."></a>
</div>
<div id="title-detail" class="col-sm-4">
	<h1>Title Product</h1>
	<h4>ID Product: </h4>
	<h4>Price: </h4>
	<h4>Qty: </h4>
	<button type="button" class="btn btn-primary">Cart</button>
</div> --}}

<div class="col-sm-7">
<ol class="breadcrumb">
  <li><a href="\">Trang Chủ</a></li>
  <li><a href="{{ route('index.showbycategory',$detail->category->id) }}">{{ $detail->category->name }}</a></li>
  <li class="active">{{ $detail->name }}</li>
</ol>
	<table id="table-detail">
		<tr>
		<th rowspan="6"><a id="image-detail" href="#" class="thumbnail"><img src="/image/{{ $detail->image }}" alt="..."></a></th>
			<td class="td-detail"><h1><b class="b-detail">{{ $detail->name }}</b></h1></td>
		</tr>
		
		<tr>
		<td class="td-detail"><h4><b>Nhãn Hiệu: </b>{{ $detail->brand->name }}</h4></td>
		</tr>

		<tr>
			<td class="td-detail"><h4><b>Xuất Xứ: </b>{{ $detail->origin->name }}</h4></td>
		</tr>
		<tr>
			<td class="td-detail"><h4><b>Lượt Xem: </b>{{ $detail->view }}</h4></td>
		</tr>
		<tr>
			<td class="td-detail"><h4><b>Giá: </b>{{ number_format($detail->price,0,',','.') }} VNĐ</h4></td>
		</tr>
		
		<tr>
			<td class="td-detail"><a href="/cart/add/{{ $detail->id }}"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span> <b>Mua</b></button></a></td>
		</tr>
	</table>
{{-- Thông tin sản phẩm --}}
	<ul id="nav_category_new" class="nav nav-tabs">
  		<li class="active"><a data-toggle="tab" href="#menu1">Thông tin chi tiết</a></li>
	</ul>
	<div class="tab-content">
		<div id="menu1" class="tab-pane fade in active">
			<br/>
			<div class="row">
			<?php
				echo $detail->content;
			?>
			</div>
		</div>
	</div>
{{-- Sản Phẩm Liên Quan --}}
	<ul id="nav_category_new" class="nav nav-tabs">
	  	<li class="active"><a data-toggle="tab" href="#menu1">Sản Phẩm Liên Quan</a></li>
	</ul>
		<div class="tab-content">
			<div id="menu1" class="tab-pane fade in active">
				<br/>
				<div class="row">
				
					<div class="row">
						@foreach($product as $key)	
						<div class="col-xs-6 col-md-3">
							<a href="#" class="thumbnail">
							<img src="/image/{{ $key->image }}" alt="...">
							</a>
							<center>
						      <div class="caption">
						        <a href="#"><h4>{{ $key->name }}</h4></a>
						        <p>{{ number_format($key->price,0,',','.') }} <b>VNĐ</b> </p>
						        <p><a href="/cart/add/{{ $key->id }}" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart"></span><b> Mua</b></a></p>
						      </div>
					     	 </center>
						</div>
						@endforeach
					</div>

				</div>
			</div>
		</div>

@stop

@section('body.js')
	
@stop

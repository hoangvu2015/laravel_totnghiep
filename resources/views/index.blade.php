@extends('fornlayouts.layouts.master') 

@section('body.content')
	<div class="col-sm-7">
	<ol class="breadcrumb">
	  <li class="active">Trang Chủ</li>
	</ol>
	 @include('fornlayouts.partials.carousel')
	 {{-- San Pham Moi Nhat --}}
		<ul id="nav_category_new" class="nav nav-tabs">
	  		<li class="active"><a data-toggle="tab" href="#menu1">Sản Phẩm Mới Nhất</a></li>
	  		<li><a data-toggle="tab" href="#menu2">Sản Bán Chạy Nhất</a></li>
	  		<li><a data-toggle="tab" href="#menu3">Sản Khuyến Mãi</a></li>
		</ul>
		<div class="tab-content">
			<div id="menu1" class="tab-pane fade in active">
				<br/>
				<div class="row">
				
					<div class="row">
						@foreach ($newProduct as $key)
							
							<div class="col-xs-6 col-md-3">
								<a href="{{ route('index.showproduct',$key->id) }}" class="thumbnail">
								<img src="/image/{{ $key->image }}" alt="...">
								</a>
								<center>
							      <div class="caption">
							        <a href="{{ route('index.showproduct',$key->id) }}"><h4>{{ $key->name }}</h4></a>
							        <p>{{ number_format($key->price,0,',','.') }}  <b>VNĐ</b> </p>
							        <p><a href="/cart/add/{{ $key->id }}" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart"></span><b> Mua</b></a></p>
							      </div>
						     	 </center>
							</div>
						
						@endforeach
						
					</div>

				</div>
			</div>

			<div id="menu2" class="tab-pane fade in">
				<br/>
				<div class="row">
				
					<div class="row">
						@foreach ($hotProduct as $key)
						
							<div class="col-xs-6 col-md-3">
								<a href="{{ route('index.showproduct',$key->id) }}" class="thumbnail">
								<img src="/image/{{ $key->image }}" alt="...">
								</a>
								<center>
							      <div class="caption">
							        <a href="{{ route('index.showproduct',$key->id) }}"><h4>{{ $key->name }}</h4></a>
							        <p>{{ number_format($key->price,0,',','.') }}  <b>VNĐ</b> </p>
							        <p><a href="/cart/add/{{ $key->id }}" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart"></span><b> Mua</b></a></p>
							      </div>
						     	 </center>
							</div>
						
						@endforeach
					</div>

				</div>
			</div>
			
			<div id="menu3" class="tab-pane fade in">
				<br/>
				<div class="row">
				
					<div class="row">

						@foreach ($discountProduct as $key)
						
							<div class="col-xs-6 col-md-3">
								<a href="{{ route('index.showproduct',$key->id) }}" class="thumbnail">
								<img src="/image/{{ $key->image }}" alt="...">
								</a>
								<center>
							      <div class="caption">
							        <a href="{{ route('index.showproduct',$key->id) }}"><h4>{{ $key->name }}</h4></a>
							        <p>{{ number_format($key->price,0,',','.') }}  <b>VNĐ</b> </p>
							        <p><a href="/cart/add/{{ $key->id }}" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart"></span><b> Mua</b></a></p>
							      </div>
						     	 </center>
							</div>
						
						@endforeach

						
					</div>

				</div>
			</div>

		</div>
	{{-- Tin Tuc. --}}
			<ul id="nav_category_new" class="nav nav-tabs">
	  		<li class="active"><a data-toggle="tab" href="#tintuc1">Tin Tức Mới</a></li>
	  		
		</ul>
		<div class="tab-content">
			<div id="tintuc1" class="tab-pane fade in active">
				<br/>
				<div class="row">
				
					<div class="row">
						@foreach ($article as $key)	
						
							<div class="media">
							  <div class="media-left media-top">
							    <a href="#">
							      <img class="media-object thumbnail" style="width: 200px;" src="/image/{{ $key->image }}" alt="{{ $key->image }}">
							    </a>
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading"><a href="{{ route('index.show_article',$key->id) }}">{{ $key->name }}</a></h4>
							    <p style="font-size: 13px">Cập nhật: {{ $key->updated_at }}</p>
							    {{ $key->summary }}
							    <p style="text-align: right; margin-right: 20px;"><a href="{{ route('index.show_article',$key->id) }}" role="button"><b> Đọc tiếp...</b></a></p>
							  </div>
							</div>
						
						@endforeach
					</div>

				</div>
			</div>
			
		</div>
	</div><!--div col-sm-7-->
@stop


			

@section('body.js')
	
@stop

@extends('fornlayouts.layouts.master')

@section('body.content')

	<div class="col-sm-7">
		<ol class="breadcrumb">
			<li><a href ="\">Trang chủ</a></li>
			<li class   ="active">{{ $nameCategory }}</li>
		</ol>
		
		{{-- San Pham Theo Loai --}}
		<ul id="nav_category_new" class="nav nav-tabs">
	  		<li class="active"><a data-toggle="tab" href="#category_product">{{ $nameCategory }}</a></li>
		</ul>
		<div class="tab-content">
			<div id="category_product" class="tab-pane fade in active">
				<br/>
				<div class="row">
				
					<div class="row">
						@foreach ($category_product as $value)
							<div class="col-xs-6 col-md-3">
								<a href="{{ route('index.showproduct',$value['id']) }}" class="thumbnail">
								<img src="/image/{{ $value['image'] }}" alt="...">
								</a>
								<center>
							      <div class="caption">
							        <a href="{{ route('index.showproduct',$value['id']) }}"><h4>{{ $value['name'] }}</h4></a>
							        <p>{{ number_format($value['price'],0,',','.') }}  <b>VNĐ</b> </p>
							        <p><a href="/cart/add/{{ $value['id'] }}" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart"></span><b> Mua</b></a></p>
							      </div>
						     	 </center>
							</div>
						
						@endforeach
						
					</div>

				</div>
			</div>
		</div><!--tab-content-->

	</div>
	
@stop

@section('body.js')

@stop

@extends('fornlayouts.layouts.master')

@section('body.content')

	<div class="col-sm-7">
		<ol class="breadcrumb">
			<li><a href ="\">Trang Chủ</a></li>
			<li class   ="active">Tìm Kiếm</li>
		</ol>
		
		{{-- Tim Kiem --}}
		<ul id="nav_search" class="nav nav-tabs">
	  		<li class="active"><a data-toggle="tab" href="#product">Kết Quả Tìm Kiếm</a></li>
		</ul>
		<div class="tab-content">
			<div id="product" class="tab-pane fade in active">
				<br/>
				<div class="row">
				
					<div class="row">
						@if($product==null)
							<h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspProduct not found</h4>
						@endif
						@foreach ($product as $value)
							<div class="col-xs-6 col-md-3">
								<a href="{{ route('product.show',$value['id']) }}" class="thumbnail">
								<img src="/image/{{ $value['image'] }}" alt="...">
								</a>
								<center>
							      <div class="caption">
							        <a href="{{ route('product.show',$value['id']) }}"><h4>{{ $value['name'] }}</h4></a>
							        <p>{{ number_format($value['price'],0,',','.') }}  <b>VNĐ</b> </p>
							        <p><a href="#" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart"></span><b> Mua</b></a></p>
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

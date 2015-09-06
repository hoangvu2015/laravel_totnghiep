
<ul class="nav nav-pills nav-stacked">
		<li role="presentation" class="active"><a href="{{ route('index.showbycategory',0) }}">MỤC SẢN PHẨM</a></li>
		<?php $i=0;?>
		@foreach($allMenu as $key=>$menu)
		<li role="presentation" data-toggle="collapse" data-target="#collapse{{ $i }}" aria-expanded="false" aria-controls="collapse{{ $i }}">
		   <a>{{ $menu['name'] }} <span class="caret"></span></a>

		    @if(isset($menu['sub']))
			    <ul class="nav nav-pills nav-stacked collapse" id="collapse{{ $i }}">
					@include('fornlayouts.partials._leftmenu', array('items' => $menu['sub'],'text'=>'   - '))
			    </ul>
		    @endif

		</li>
		<?php $i++;?>
		@endforeach
</ul>

{{-- Sản Phẩm Bán Chạy --}}
	<div class="panel panel-primary">

	  <div class="panel-heading">
	    <h3 class="panel-title">Sản Phẩm Hot</h3>
	  </div>

	  <div class="panel-body">
	   		
			<div id="myCarousel1" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->

				<ol class="carousel-indicators">
					<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
				@for($i=1; $i<count($hotProduct); $i++)
					<li data-target="#myCarousel1" data-slide-to="{{ $i }}"></li>
				@endfor
				</ol>
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<?php $i=0;?>
					@foreach ($hotProduct as $key)
					
						@if($i==0)
							<div class="item active">
						@else 
							<div class="item">
						@endif
								<img class="image-carousel-detail" src="/image/{{ $key->image }}" alt="Chania">
								<div class="carousel-caption">
							        <h3><a class="a-left" href="{{ route('index.showproduct',$key->id) }}">{{ $key->name }}</a></h3>
							        <h4><b>Giá: </b>{{ number_format($key->price,0,',','.') }} VNĐ</h4>
							         <p><a href="/cart/add/{{ $key->id }}" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart"></span><b> Mua</b></a></p>
						     	</div>
						</div>
						<?php $i=1;?>
					
					@endforeach
				</div>
				
				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel1" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel1" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div><!--div carousel-->
		
	  </div><!--div body panner-->

	</div><!--div panner-->

{{-- Sản Phẩm Khuyến mãi --}}
	<div class="panel panel-primary">

	  <div class="panel-heading">
	    <h3 class="panel-title">Sản Phẩm Khuyến Mãi</h3>
	  </div>

	  <div class="panel-body">
	   		
			<div id="myCarousel-Khuyenmai" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->

				<ol class="carousel-indicators">
					<li data-target="#myCarousel-Khuyenmai" data-slide-to="0" class="active"></li>
				@for($i=1; $i<count($discountProduct); $i++)
					<li data-target="#myCarousel-Khuyenmai" data-slide-to="{{ $i }}"></li>
				@endfor
				</ol>
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<?php $i=0;?>
					@foreach ($discountProduct as $key)
					@if($i==0)
						<div class="item active">
					@else 
						<div class="item">
					@endif
							<img class="image-carousel-detail" src="/image/{{ $key->image }}" alt="Chania">
							<div class="carousel-caption">
						        <h3><a class="a-left" href="{{ route('index.showproduct',$key->id) }}">{{ $key->name }}</a></h3>
						        <h4><b>Giá: </b>{{ number_format($key->price,0,',','.') }} VNĐ</h4>
						         <p><a href="/cart/add/{{ $key->id }}" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-shopping-cart"></span><b> Mua</b></a></p>
					     	</div>
					</div>
					<?php $i=1;?>
					@endforeach
				</div>
				
				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel-Khuyenmai" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel-Khuyenmai" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div><!--div carousel-->
	  </div><!--div body panner-->

	</div><!--div panner-->

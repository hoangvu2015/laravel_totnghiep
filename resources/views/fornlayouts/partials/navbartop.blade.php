
<nav id="navbartop" class="navbar navbar-default navbar-fixed-top" role="navigation">
	{{-- <a class="navbar-brand" href="#">Title</a> --}}
	
	

		{!! Form::open([
				'route'=>'product.search',
				'method'=>'post',
				'class'=>'navbar-form',
				'role'=>'search',
				'style'=>'display:inline;'
		]) !!}


			<div class="input-group">
      
				{!! Form::text('search',(isset($nameproduct) ? $nameproduct : null),['class'=>'form-control','placeholder'=>'Tìm kiếm ','required'=>true]) !!}

				 <span class="input-group-btn">
					{!! Form::button('', ['type'=>'submit','id'=>'btn-search','class'=>'btn btn-primary glyphicon glyphicon-search']) !!}
				 </span>

			</div><!-- /input-group -->

		{!! Form::close() !!}
	<ul class="nav navbar-nav navbar-right">
		<li>
			
			
			@if(\Session::has('giohang')&&\Session::get('giohang')!=null)

				<?php
					$total=0;
					foreach (\Session::get('giohang') as $key => $value) {

						$total+=$value['qty']*$value['price']*(100-$value['discount'])/100;
					}
					echo '<b>Tổng tiền: </b>'.number_format($total,0,',','.').' VNĐ';
					
				?>
			@endif
			<h3 style="display:inline"> 
				<a href="/cart/index">
					
					@if(\Session::has('giohang')&&\Session::get('giohang')!=null)
						<span id="badge-cart" class="badge">
						<?php
							echo count(\Session::get('giohang'));
						?>
							</span>  
					@endif
					
					<span id="shopping-cart" class="glyphicon glyphicon-shopping-cart"></span> 
				</a> 
			
			</h3>
			
		</li>
	</ul>
</nav>
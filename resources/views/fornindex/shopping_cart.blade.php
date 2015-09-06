@extends('fornlayouts.layouts.master')

@section('body.content')

<div class="col-sm-7">
		<ol class="breadcrumb">
			<li><a href ="\">Trang Chủ</a></li>
			<li class   ="active">Giỏ Hàng</li>
		</ol>
		@if (count($errors) > 0)
			<div class="alert alert-danger">
				<strong>Whoops!</strong> There were some problems with your input.<br><br>
				<ul>
					@foreach ($errors->all() as $error)
						<li>{{ $error }}</li>
					@endforeach
				</ul>
			</div>
		@endif
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Hình Ảnh</th>
				<th>Tên SP</th>
				<th>Loại SP</th>
				<th>Số Lượng</th>
				<th>Đơn Giá</th>
				<th>Giảm Giá</th>
				<th>Tổng</th>
				<th>Tác Vụ</th>
			</tr>
		</thead>
		<tbody>
		<?php $total=0;?>
			@foreach (\Session::get('giohang') as $value)
				<tr>
					{!! Form::open([
						'url'=>['/cart/update',$value['id']],
							//'route'=>['cart.update',$value['id']],
							'method'=>'POST'
					]) !!}
					<td><a href="{{ route('index.showproduct',$value['id']) }}"><img style="  width: 100px; height: 100px;" src="{{ URL::to('/image/'.$value['image']) }}"></a></td>
					<td><a href="{{ route('index.showproduct',$value['id']) }}">{{ $value['name'] }}</a></td>
					<td>{{ $value['category_id'] }}</td>	
					<td>{!! Form::text('qty', $value['qty']) !!}</td>
					<td>{{ number_format($value['price'],0,',','.') }} VNĐ</td>
					<td>{{ $value['discount'] }} %</td>
					<td>{{ number_format($value['amount'],0,',','.') }} VNĐ</td>
					
					<td>
					<button class="btn btn-primary glyphicon glyphicon-refresh"></button>

					{!! Form::close() !!}

					{!! Form::open([
						'url'=>['/cart/destroy',$value['id']],
						//'route'=>['cart.destroy',$value['id']],
						'method'=>'post',
						
					]) !!}
					<button class="btn btn-danger glyphicon glyphicon-remove"></button>

					{!! Form::close() !!}

					</td>
				</tr> 
				<?php $total+=$value['amount'];?>
			@endforeach
		</tbody>
		<tr><h3><span class="label label-danger"><b>Tổng tiền:</b></span> 	{{ number_format($total,0,',','.') }} VNĐ</h3></tr>
	</table>
	<br/>

		{!! Form::open([
				'url'=>'/cart/checkcart',
				'method'=>'POST'
		]) !!}

				<div class="form-group">
					<h3><span class="label label-default">Chọn khu vực vận chuyển</span></h3>
					{!! Form::select('ship', $ship,null,['class'=>'form-control','placeholder'=>'Name Product','required'=>'required']) !!}
				</div>

				<br/>
				<br/>

				<div class="form-group">
					<h3><span class="label label-default">Chọn phương thức thanh toán</span></h3>
					{!! Form::select('pay',$pay,null,['class'=>'form-control','placeholder'=>'Name Product','required'=>'required']) !!}
				</div>

				<br/>
					<b style="color: red;">Vui lòng đăng nhập trước khi chấp nhận mua hàng !!</b> <a href="/auth/login">Login</a>
				<br/><br/><br/>
				<a href="\"><button type="button" class="btn btn-info">Tiếp Tục Mua Hàng</button></a>
				
				<button type="submit" class="btn btn-danger">Chấp Nhận Giỏ Hàng</button>
		{!! Form::close() !!}
</div>
	
@stop

@section('body.js')
	
@stop

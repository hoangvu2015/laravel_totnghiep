@extends('fornlayouts.layouts.master')

@section('body.content')

<div class="col-sm-7">
		<ol class="breadcrumb">
			<li><a href ="\">Home</a></li>
			<li class   ="active">Detail Cart</li>
		</ol>
	<center><h1>KIỂM TRA ĐƠN HÀNG</h1></center><br/>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Hình Ảnh</th>
				<th>Tên SP</th>
				<th>Số Lượng</th>
				<th>Giá</th>
				<th>Giảm Giá</th>
				<th>Tổng Tiền</th>
				
			</tr>
		</thead>
		<tbody>
		<?php $total=0;?>
			@foreach (\Session::get('giohang') as $value)
				<tr>
					
					<td><a href="{{ route('index.showproduct',$value['id']) }}"><img style="  width: 100px; height: 100px;" src="{{ URL::to('/image/'.$value['image']) }}"></a></td>
					<td><a href="{{ route('index.showproduct',$value['id']) }}">{{ $value['name'] }}</a></td>
					<td>{{ $value['qty']}}</td>
					<td>{{ number_format($value['price'],0,',','.') }} VNĐ</td>
					<td>{{ $value['discount'] }} %</td>
					<td>{{ number_format($value['amount'],0,',','.') }} VNĐ</td>
					
				</tr> 
				<?php $total+=$value['amount'];?>
			@endforeach
			
		</tbody>
		
		
	</table>

	{!! Form::open([
		'url'=>'/cart/buy',
		'method'=>'POST'
	]) !!}
	<div class="col-sm-4 col-sm-offset-8">
		
		
		<h4><span class="label label-warning"><b>Phí vận chuyển: </b>{{ number_format($ship->price,0,',','.') }} VNĐ - {{ $ship->name }}</span></h4>
		<?php 
			$total+=$ship->price;
			\Session::put('total', $total);

		?>

		<h3><span class="label label-danger"><b>Thành tiền: </b>{{ number_format($total,0,',','.') }} VNĐ</span></h3>
	</div>
	@if($account_number==true)
	<div class="form-group">
		<h3><span class="label label-default">Nhập Số Tài Khoản: </span></h3>
		{!! Form::text('account_number',null,['class'=>'form-control','placeholder'=>'Nhập Số Tài Khoản','required'=>true]) !!}
		
	</div>
	@endif

	<div class="form-group">
		<h3><span class="label label-default">Tin Nhắn</span></h3>
		{!! Form::textarea('message',null,['class'=>'form-control','placeholder'=>'Tin Nhắn']) !!}

	</div>
	<a href="/cart/cancel"><button type="button" class="btn btn-danger">Hủy Đơn Hàng</button></a>
	<button type="submit" class="btn btn-primary">Chấp Nhận Mua Hàng</button>&nbsp&nbsp&nbsp   
	
	{!! Form::close() !!}
</div>
	
@stop

@section('body.js')
	
@stop

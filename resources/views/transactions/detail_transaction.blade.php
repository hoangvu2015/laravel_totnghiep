@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')


		<h1 class="text-center">CHI TIẾT GIAO DỊCH</h1>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<tr>
				<th>ID</th>
				<th>Mã Giao Dịc</th>
				<th>Tên Khách Hàng</th>
				<th>Ảnh Sản Phẩm</th>
				<th>Tên Sản Phẩm</th>
				<th>Giá Bán</th>
				<th>Số Lượng</th>
				<th>Giảm Giá</th>
				<th>Tổng Tiền</th>
				<th>Trạng Thái</th>
				<th>Ngày Tạo</th>
				<th>Ngày Cập Nhật</th>
				<th>Tác Vụ</th>
			</tr>
			</tr>
		</thead>
		<tbody>
			@foreach($transaction_order as $key)
				<tr>
					<td>{{ $key->id }}</td>
					<td>{{ $key->transaction_id }}</td>
					<td>{{ $key->transaction->customer->name }}</td>
					<td><a href="{{ route('index.showproduct',$key->product->id) }}"><img style="  width: 100px; height: 100px;" src="{{ URL::to('/image/'.$key->product->image) }}"></a></td>
					<td><a href="{{ route('index.showproduct',$key->product->id) }}">{{ $key->product->name }}</a></td>
					
					<td>{{ number_format($key->price_order,0,',','.') }} VNĐ</td>
					<td>{{ $key->qty }}</td>
					<td>{{ $key->discount_order }} %</td>
					<td>{{ number_format(($key->qty*$key->price_order*(100-$key->discount_order)/100),0,',','.') }} VNĐ</td>
					{{-- <td>{{ $key->note }}</td> --}}
					@if($key->status_order==1)
					<td>Đã gửi hàng</td>
					@else 
					<td>Chưa gửi hàng</td>
					@endif  
					<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
					<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
					<td>
					<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('order.edit',$key->id) }}"></a>&nbsp&nbsp

					{!! Form::open([
						'route'=>['order.destroy',$key->id],
						'method'=>'DELETE',
						'style'=>'display:inline;'

					]) !!}
					<button class="btn btn-danger glyphicon glyphicon-remove"></button>

					{!! Form::close() !!}

					</td>
				</tr> 

			@endforeach
		</tbody>
	</table>
	

{{-- <center>
	<div class="row">
		<div class="col-sm-7 col-sm-offset-3">
			{!!$transaction->render() !!}
		</div>
	</div>
</center> --}}
@stop


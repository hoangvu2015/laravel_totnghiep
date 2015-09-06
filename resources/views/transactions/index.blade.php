@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')


		<h1 class="text-center">DANH SÁCH GIAO DỊCH</h1>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>ID</th>
				<th>Khách Hàng</th>
				<th>KV Vận Chuyển</th>
				<th>PT Thanh Toán</th>
				<th>Trạng Thái</th>
				<th>Tổng Tiền</th>
				<th>Mã Bảo Mật</th>
				<th>Số Tài Khoản</th>
				<th>Xem Đơn Hàng</th>
				<th>Ngày Tạo</th>
				<th>Ngày Sửa</th>
				<th>Tác Vụ</th>
			</tr>
		</thead>
		<tbody>
			@foreach($transaction as $key)
				<tr>
					<td>{{ $key->id }}</td>
					<td>{{ $key->customer->name }}</td>
					<td>{{ $key->ship->name }}</td>
					<td>{{ $key->pay->name }}</td>
					@if($key->status==1)
					<td>Đã xử lý</td>
					@else
					<td>Chờ xử lý</td>
					@endif 
					<td>{{ number_format($key->amount,0,',','.') }} VNĐ</td>
					<td>{{ $key->security }} </td>
					<td>{{ $key->account_number }} </td>
					<td><a href="{{ route('transaction.detail',$key->id) }}">Xem Chi Tiết</a></td>
					<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
					<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
					<td>
					<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('transaction.edit',$key->id) }}"></a>&nbsp&nbsp

					{!! Form::open([
						'route'=>['transaction.destroy',$key->id],
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
	

<center>
	<div class="row">
		<div class="col-sm-7 col-sm-offset-3">
			{!!$transaction->render() !!}
		</div>
	</div>
</center>
@stop


@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')


		<h1 class="text-center">DANH SÁCH SẢN PHẨM</h1>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>ID</th>
				<th>Hình Ảnh</th>
				<th>Tên SP</th>
				<th>Loại SP</th>
				<th>Thương Hiệu</th>
				<th>Xuất Xứ</th>
				<th>Đơn Giá</th>
				<th>Số Lượng Tồn</th>
				<th>Giảm Giá</th>				
				<th>Trạng Thái</th>
				<th>Lượt Xem</th>
				<th>Ngày Tạo</th>
				<th>Ngày Sửa</th>
				<th>Tác Vụ</th>
			</tr>
		</thead>
		<tbody>
			@foreach($products as $key)
				<tr>
					<td>{{ $key->id }}</td>
					<td><a href="{{ route('index.showproduct',$key->id) }}"><img style="  width: 100px; height: 100px;" src="{{ URL::to('/image/'.$key->image) }}"></a></td>
					<td><a href="{{ route('index.showproduct',$key->id) }}">{{ $key->name }}</a></td>
					<td>{{ $key->category->name }}</td>
					<td>{{ $key->brand->name }}</td>
					<td>{{ $key->origin->name }}</td>
					<td>{{ number_format($key->price,0,',','.') }} VNĐ</td>
					<td>{{ $key->qty_inventory }}</td>
					<td>{{ $key->discount }} %</td>
					<td>
						@if($key->status_product == 0)
							<p>Đang ẩn</p>
						@else 
							<p>Đang Hiển thị</p>
						@endif
					</td>
					<td>{{ $key->view }}</td>
					<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
					<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
					<td>
					<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('product.edit',$key->id) }}"></a>&nbsp&nbsp

					{!! Form::open([
						'route'=>['product.destroy',$key->id],
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
			{!!$products->render() !!}
		</div>
	</div>
</center>
@stop


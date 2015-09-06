@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')


		<h1 class="text-center">DANH SÁCH PHƯƠNG THỨC VẬN CHUYỂN</h1>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>ID</th>
				<th>Tên PT</th>
				<th>Giá</th>
				<th>Ngày Tạo</th>
				<th>Ngày Sửa</th>
				<th>Tác Vụ</th>
			</tr>
		</thead>
		<tbody>
		@foreach($ship as $key)
			<tr>
				<td>{{ $key->id }}</td>
				<td>{{ $key->name }}</td>
				<td>{{ number_format($key->price,0,',','.') }} VNĐ</td>
				<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
				<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
				<td>
				<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('ship.edit',$key->id) }}"></a>&nbsp&nbsp

				{!! Form::open([
					'route'=>['ship.destroy',$key->id],
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
			{!!$ship->render() !!}
		</div>
	</div>
</center>
@stop


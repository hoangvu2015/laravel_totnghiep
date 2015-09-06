@extends('adminlayouts.layouts.master')

@section('title')
	Pages Index Brand
@stop


@section('body.content')
	
			<h1 class="text-center">DANH SÁCH THƯƠNG HIỆU</h1>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Tên Thương Hiệu</th>
						<th>Ngày Tạo</th>
						<th>Ngày Sửa</th>
						<th>Tác Vụ</th>
					</tr>
				</thead>
				<tbody>
					@foreach($brand as $key)
						<tr>
							<td>{{ $key->id }}</td>
							<td>{{ $key->name }}</td>
							<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
							<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
							<td>
							<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('brand.edit',$key->id) }}"></a>&nbsp&nbsp

							{!! Form::open([
								'route'=>['brand.destroy',$key->id],
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
			{!!$brand->render() !!}
		</div>
	</div>
</center>

@stop
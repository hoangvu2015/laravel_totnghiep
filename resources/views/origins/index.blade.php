@extends('adminlayouts.layouts.master')

@section('title')
	Pages Index Origins 
@stop


@section('body.content')
	
			<h1 class="text-center">DANH SÁCH XUẤT XỨ</h1>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Tên Nước</th>
						<th>Ngày Tạo</th>
						<th>Ngày Sửa</th>
						<th>Tác Vụ</th>
					</tr>
				</thead>
				<tbody>
					@foreach($origin as $key)
						<tr>
							<td>{{ $key->id }}</td>
							<td>{{ $key->name }}</td>
							<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
							<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
							<td>
							<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('origin.edit',$key->id) }}"></a>&nbsp&nbsp

							{!! Form::open([
								'route'=>['origin.destroy',$key->id],
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
			{!!$origin->render() !!}
		</div>
	</div>
</center>

@stop
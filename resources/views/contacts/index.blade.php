@extends('adminlayouts.layouts.master')

@section('title')
	Pages Index Contact
@stop


@section('body.content')
	
			<h1 class="text-center">DANH SÁCH LOẠI SẢN PHẨM</h1>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Tên KH</th>
						<th>Email</th>
						<th>Chủ đề</th>
						<th>Trạng thái</th>
						<th>Ngày Tạo</th>
						<th>Ngày Sửa</th>
						<th>Tác Vụ</th>
					</tr>
				</thead>
				<tbody>
					@foreach($contact as $key)
						<tr>
							<td>{{ $key->id }}</td>
							<td>{{ $key->name }}</td>
							<td>{{ $key->email }}</td>
							<td>{{ $key->subject }}</td>
							@if($key->status == 0)
								<td style="color: red">Chưa đọc</td>
							@else
								<td style="color: blue">Đã đọc</td>
							@endif
							<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
							<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
							<td>
							<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('contact.edit',$key->id) }}"></a>&nbsp&nbsp

							{!! Form::open([
								'route'=>['contact.destroy',$key->id],
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
			{!!$contact->render() !!}
		</div>
	</div>
</center>

@stop
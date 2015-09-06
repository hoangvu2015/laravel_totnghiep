@extends('adminlayouts.layouts.master')

@section('title')
	Pages Index Customer
@stop


@section('body.content')
	
			<h1 class="text-center">DANH SÁCH KHÁCH HÀNG</h1>
			
				<table class="table table-striped table-hover" >
					<thead>
						<tr>
							<th>ID</th>
							<th>Tên KH</th>
							<th>Email</th>
							<th>Số ĐT</th>
							<th>Địa Chỉ</th>
							<th>Quyền</th>
							<th>Ngày Tạo</th>
							<th>Ngày Sửa</th>
							<th>Tác Vụ</th>
						</tr>
					</thead>
					<tbody>
						@foreach($customer as $key)
							<tr>
								<td>{{ $key->id }}</td>
								<td>{{ $key->name }}</td>
								<td>{{ $key->email }}</td>
								<td>{{ $key->phone }}</td>
								<td>{{ $key->address }}</td>
								<td>{{ $key->role }}</td>
								<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
								<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
								<td>
								<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('customer.edit',$key->id) }}"></a>&nbsp&nbsp

								{!! Form::open([
									'route'=>['customer.destroy',$key->id],
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
			{!!$customer->render() !!}

		</div>
	</div>
</center>

@stop
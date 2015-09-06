@extends('adminlayouts.layouts.master')

@section('title')
	Trang Index
@stop

@section('body.content')


		<h1 class="text-center">DANH SÁCH TIN TỨC</h1>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>ID</th>				
				<th>Hình Ảnh</th>
				<th>Tiêu Đề</th>
				<th>Tóm Tắc</th>
				<th>Trạng Thái</th>
				<th>Ngày Tạo</th>
				<th>Ngày Sửa</th>
				<th>Tác Vụ</th>
			</tr>
		</thead>
		<tbody>
			@foreach($article as $key)
				<tr>
					<td>{{ $key->id }}</td>					
					<td><a href="{{ route('article.show',$key->id) }}"><img style="  width: 100px; height: 100px;" src="{{ URL::to('/image/'.$key->image) }}"></a></td>
					<td><a href="{{ route('article.show',$key->id) }}">{{ $key->name }}</a></td>
					<td>{{ $key->summary }}</td>	
					<td>
						@if($key->status==0)
							<p>Đang ẩn</p>
						@else 
							<p>Đang Hiển thị</p>
						@endif
					</td>				
					<td>{{date('d/m/yy h:m:s',strtotime($key->created_at))  }}</td>
					<td>{{ date('d/m/yy h:m:s',strtotime($key->updated_at))  }}</td>
					<td>
					<a class="btn btn-primary glyphicon glyphicon-refresh" href="{{ route('article.edit',$key->id) }}"></a>&nbsp&nbsp
					@if($key->id !=1 && $key->id !=2)
						{!! Form::open([
							'route'=>['article.destroy',$key->id],
							'method'=>'DELETE',
							'style'=>'display:inline;'

						]) !!}
						<button class="btn btn-danger glyphicon glyphicon-remove"></button>

						{!! Form::close() !!}
					@endif
					</td>
				</tr> 

			@endforeach
		</tbody>
	</table>
	

<center>
	<div class="row">
		<div class="col-sm-7 col-sm-offset-3">
			{!!$article->render() !!}
		</div>
	</div>
</center>
@stop




<div class="form-group">
	<h3>{!! Form::label('name', 'Tên Sản Phẩm',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('name',null,['class'=>'form-control','placeholder'=>'Tên Sản Phẩm']) !!}
</div>
	
<div class="form-group">
	<h3>{!! Form::label('category_id', 'Loại Sản Phẩm',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('category_id', $category,(isset($product->category_id) ? $product->category_id : null),['class'=>'form-control','placeholder'=>'Loại Sản Phẩm']) !!}
</div>

<div class="form-group">
	<h3>{!! Form::label('brand_id', 'Nhãn Hiệu',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('brand_id', $brand,(isset($product->brand_id) ? $product->brand_id : null),['class'=>'form-control','placeholder'=>'Nhãn Hiệu']) !!}
</div>

<div class="form-group">
	<h3>{!! Form::label('origin_id', 'Xuất Xứ',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('origin_id', $origin,(isset($product->origin_id) ? $product->origin_id : null),['class'=>'form-control','placeholder'=>'Xuất Xứ']) !!}
</div>

<div class="form-group">

	<h3>{!! Form::label('price', 'Đơn Giá',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('price',null,['class'=>'form-control','placeholder'=>'Đơn Giá VNĐ']) !!}
</div>

<div class="form-group">

	<h3>{!! Form::label('qty_inventory', 'Số Lượng Tồn',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('qty_inventory',null,['class'=>'form-control','placeholder'=>'Số Lượng Tồn']) !!}
</div>

<div class="form-group">

	<h3>{!! Form::label('content', 'Nội Dung',['class'=>'label label-default']) !!}</h3>
	{!! Form::textarea('content',null,['class'=>'form-control ckeditor','placeholder'=>'Nội Dung']) !!}
</div>

<div class="form-group">
	<h3>{!! Form::label('discount', 'Giảm Giá',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('discount',null,['class'=>'form-control','placeholder'=>'Giảm Giá %']) !!} 
</div>

<div class="form-group">
	<h3>{!! Form::label('image', 'Hình Ảnh',['class'=>'label label-default']) !!}</h3>
	{!! Form::file('image') !!}
</div>

<div class="form-group">
	<h3>{!! Form::label('status_product', 'Trạng Thái',['class'=>'label label-default']) !!}</h3>
	{!! Form::checkbox('status_product', null, '0',['class'=>'checkbox-inline']) !!}
</div>

<div class="form-group">
	{!! Form::submit($button_name,['class'=>'btn btn-primary']) !!}
</div>



<div class="form-group">
	<h3>{!! Form::label('name', 'Tên Loại SP',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('name',null,['id'=>'title','class'=>'form-control','placeholder'=>'Tên Loại SP']) !!}
</div>
	
<div class="form-group">
	<h3>{!! Form::label('category_id', 'Menu',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('parent_id',['0'=>'Home' ,isset($category_parent) ? $category_parent : $category ],isset($category->parent_id) ? $category->parent_id : null ,['id'=>'title','class'=>'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::submit($button_name,['class'=>'btn btn-primary']) !!}
</div>

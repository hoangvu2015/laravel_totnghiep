

<div class="form-group">
	<h3>{!! Form::label('name', 'Tiêu Đề',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('name',null,['id'=>'title','class'=>'form-control','placeholder'=>'Tiêu Đề']) !!}
	@if ($errors->has('name'))<p style="color:red;">{!!$errors->first('name')!!}</p>@endif
</div>

<div class="form-group">
	<h3>{!! Form::label('summary', 'Tóm Tắc',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('summary',null,['class'=>'form-control','placeholder'=>'Tóm Tắc']) !!} 
	@if ($errors->has('summary'))<p style="color:red;">{!!$errors->first('summary')!!}</p>@endif
</div>

<div class="form-group">

	<h3>{!! Form::label('content', 'Nội Dung',['class'=>'label label-default']) !!}</h3>
	{!! Form::textarea('content',null,['class'=>'form-control ckeditor','placeholder'=>'Nội Dung']) !!}
	@if ($errors->has('content'))<p style="color:red;">{!!$errors->first('content')!!}</p>@endif
</div>



<div class="form-group">
	<h3>{!! Form::label('image', 'Hình Ảnh',['class'=>'label label-default']) !!}</h3>
	{!! Form::file('image') !!}
	@if ($errors->has('image'))<p style="color:red;">{!!$errors->first('image')!!}</p>@endif
</div>
	
<div class="form-group">
	<h3>{!! Form::label('status', 'Trạng Thái',['class'=>'label label-default']) !!}</h3>
	{!! Form::checkbox('status', null, '0',['class'=>'checkbox-inline']) !!}
</div>

<div class="form-group">
	{!! Form::submit($button_name,['class'=>'btn btn-primary']) !!}
</div>

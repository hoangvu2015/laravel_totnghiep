

<div class="form-group">
	<h3>{!! Form::label('name', 'Tên Thương Hiệu',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('name',null,['id'=>'title','class'=>'form-control','placeholder'=>'Tên Thương Hiệu', 'required' => 'required']) !!}
</div>
	

<div class="form-group">
	{!! Form::submit($button_name,['class'=>'btn btn-primary']) !!}
</div>

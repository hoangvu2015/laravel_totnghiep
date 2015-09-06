	

	<div class="form-group">
		<h3>{!! Form::label('name', 'Tên PT',['class'=>'label label-default']) !!}</h3>
		{!! Form::text('name',null,['id'=>'title','class'=>'form-control','placeholder'=>'Tên PT']) !!}
	</div>

	<div class="form-group">
		<h3>{!! Form::label('price', 'Giá',['class'=>'label label-default']) !!}</h3>
		{!! Form::text('price',null,['id'=>'title','class'=>'form-control','placeholder'=>'VNĐ']) !!}
	</div>

	<div class="form-group">
		{!! Form::submit($button_name,['class'=>'btn btn-primary']) !!}
	</div>

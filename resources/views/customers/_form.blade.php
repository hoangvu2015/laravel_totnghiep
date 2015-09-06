

	<div class="form-group">
		<h3>{!! Form::label('name', 'Tên Khách Hàng',['class'=>'label label-default']) !!}</h3>
		{!! Form::text('name',null,['id'=>'title','class'=>'form-control','placeholder'=>'Tên Khách Hàng']) !!}
	</div>
		
	<div class="form-group">
		<h3>{!! Form::label('email', 'Email',['class'=>'label label-default']) !!}</h3>
		{!! Form::email('email',null, ['id'=>'title','class'=>'form-control','placeholder'=>'Email']) !!}
	</div>

	<div class="form-group">
		<h3>{!! Form::label('phone', 'Số Điện Thoại',['class'=>'label label-default']) !!}</h3>
		{!! Form::text('phone',null,['id'=>'title','class'=>'form-control','placeholder'=>'Số Điện Thoại']) !!}
	</div>

	<div class="form-group">
		<h3>{!! Form::label('address', 'Địa Chỉ',['class'=>'label label-default']) !!}</h3>
		{!! Form::text('address',null,['id'=>'title','class'=>'form-control','placeholder'=>'Địa Chỉ']) !!}
	</div>
	@if(isset($create))
	<div class="form-group">
		<h3>{!! Form::label('password', 'Password',['class'=>'label label-default']) !!}</h3>
		{!! Form::password('password', ['id'=>'password','class'=>'form-control','placeholder'=>'Password']) !!}
	</div>
	@endif

	<div class="form-group">
		<h3>{!! Form::label('role', 'Quyền Admin',['class'=>'label label-default']) !!}</h3>
		{!! Form::checkbox('role', null,(isset($customer->role) ? '1' : '0'),['id'=>'role','class'=>'checkbox-inline']) !!}
	</div>

	<div class="form-group">
		{!! Form::submit($button_name,['class'=>'btn btn-primary']) !!}
	</div>

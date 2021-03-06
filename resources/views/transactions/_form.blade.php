


<div class="form-group">
	<h3>{!! Form::label('customer_id', 'Khách Hàng',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('customer_id', $customer,(isset($transaction->customer_id) ? $transaction->customer_id : null),['id'=>'title','class'=>'form-control']) !!}
</div>

<div class="form-group">
	<h3>{!! Form::label('ship_id', 'PT Vận Chuyển',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('ship_id', $ship,(isset($transaction->ship_id) ? $transaction->ship_id : null),['id'=>'title','class'=>'form-control']) !!}
</div>


<div class="form-group">
	<h3>{!! Form::label('pay_id', 'PT Thanh Toán',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('pay_id', $pay,(isset($transaction->pay_id) ? $transaction->pay_id : null),['id'=>'title','class'=>'form-control']) !!}
</div>


<div class="form-group">

	<h3>{!! Form::label('account_number', 'Số TK Giao Dịch',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('account_number',null,['id'=>'title','class'=>'form-control','placeholder'=>'Số TK Giao Dịch']) !!}
</div>


<div class="form-group">
	<h3>{!! Form::label('status', 'Trạng Thái',['class'=>'label label-default']) !!}</h3>
	{!! Form::checkbox('status', null, '0',['class'=>'checkbox-inline']) !!}
</div>

<div class="form-group">

	<h3>{!! Form::label('message', 'Ghi Chú',['class'=>'label label-default']) !!}</h3>
	{!! Form::textarea('message',null,['id'=>'title','class'=>'form-control','placeholder'=>'Ghi Chú']) !!}
</div>



<div class="form-group">
	{!! Form::submit($button_name,['class'=>'btn btn-primary']) !!}
</div>

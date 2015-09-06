
@if(isset($edit))
	<div class="form-group">
	<h3>
		{!! Form::label('customer_id', 'KHÁCH HÀNG:',['class'=>'label label-default']) !!}
		{!! Form::label('customer_id', $order->transaction->customer->name,['class'=>'label-control']) !!}
	</h3>
	</div>
@endif

<div class="form-group">
	<h3>{!! Form::label('transaction_id', 'Mã Giao Dịch',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('transaction_id', $transaction,(isset($transaction->transaction_id) ? $transaction->transaction_id : null),['id'=>'title','class'=>'form-control']) !!}
</div>

<div class="form-group">
	<h3>{!! Form::label('product_id', 'Sản Phẩm',['class'=>'label label-default']) !!}</h3>
	{!! Form::select('product_id', $product,(isset($product->product_id) ? $product->product_id : null),['id'=>'title','class'=>'form-control']) !!}
</div>

<div class="form-group">

	<h3>{!! Form::label('qty', 'Số Lượng',['class'=>'label label-default']) !!}</h3>
	{!! Form::text('qty',null,['id'=>'title','class'=>'form-control','placeholder'=>'Số Lượng']) !!}

</div>


{{-- <div class="form-group">

	{!! Form::label('amount_order', 'Amount Order',['class'=>'label label-default']) !!}
	{!! Form::text('amount_order',null,['id'=>'title','class'=>'form-control','placeholder'=>'Amount Order']) !!}

</div> --}}


<div class="form-group">

	<h3>{!! Form::label('note', 'Ghi Chú',['class'=>'label label-default']) !!}</h3>
	{!! Form::textarea('note',null,['id'=>'title','class'=>'form-control','placeholder'=>'Ghi Chú']) !!}
</div>



<div class="form-group">
	<h3>{!! Form::label('status_order', 'Trạng Thái',['class'=>'label label-default']) !!}</h3>
	{!! Form::checkbox('status_order', null, '0',['class'=>'checkbox-inline']) !!}
</div>




<div class="form-group">
	{!! Form::submit($button_name,['class'=>'btn btn-primary']) !!}
</div>

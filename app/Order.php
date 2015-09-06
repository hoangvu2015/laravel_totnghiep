<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model {

	protected $table    ='orders';
	protected $fillable =[
		'transaction_id',
		'product_id',
		'qty',
		'note',
		'price_order',
		'discount_order',
		'status_order'
	];

	public function product()
	{
		return $this->belongsTo('App\Product');
	}
	public function transaction()
	{
		return $this->belongsTo('App\Transaction');
	}
}

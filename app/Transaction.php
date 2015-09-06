<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Order;

class Transaction extends Model {
	
	protected $table    ='transactions';
	protected $fillable =[
		'customer_id',
		'ship_id',
		'pay_id',
		'status',
		'message',
		'amount',
		'security',
		'account_number'
	];
	/**
	 * [customer description]
	 * @return [type] [description]
	 */
	public function customer(){
		return $this->belongsTo('App\Customer');
	}
	/**
	 * [ship description]
	 * @return [type] [description]
	 */
	public function ship(){
		return $this->belongsTo('App\Ship');
	}
	/**
	 * [pay description]
	 * @return [type] [description]
	 */
	public function pay(){
		return $this->belongsTo('App\Pay');
	}
	/**
	 * [product description]
	 * @return [type] [description]
	 */
	public function product()
	{
		return $this->belongsToMany('App\Product','orders','transaction_id','product_id');
	}
	/**
	 * [order description]
	 * @return [type] [description]
	 */
	public function order()
	{	
		return $this->hasMany('App\Order','transaction_id','id');
	}
	/**
	 * [getTransaction description]
	 * @return [type] [description]
	 */
	protected function getTransaction()
	{
		return Transaction::orderBy('status','asc')->paginate(5);
	}
	/**
	 * [detailTransaction description]
	 * @return [type] [description]
	 */
	protected function detailTransaction($id)
	{
		$transaction = Transaction::find($id);
		$order = $transaction->order;
		return $order;


	}
}

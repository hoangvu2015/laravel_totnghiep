<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model {

	protected $table    ='products';
	protected $fillable =[
		'name',
		'category_id',
		'brand_id',
		'origin_id',
		'qty_inventory',
		'price',
		'content',
		'discount',
		'image',
		'status_product',
		'view'
	];
	/**
	 * [category description]
	 * @return [type]
	 */
	public function category()
	{
		return $this->belongsTo('App\Category');
	}
	/**
	 * [brand description]
	 * @return [type]
	 */
	public function brand()
	{
		return $this->belongsTo('App\Brand');
	}
	/**
	 * [origin description]
	 * @return [type]
	 */
	public function origin()
	{
		return $this->belongsTo('App\Origin');
	}
	/**
	 * [transaction description]
	 * @return [type]
	 */
	public function transaction()
	{
		return $this->belongsToMany('App\Transaction','orders','product_id','transaction_id');
	}
	/**
	 * [order description]
	 * @return [type]
	 */
	public function order()
	{
		return $this->hasMany('App\Order','product_id','id');
	}
 	/**
 	 * Product hot
 	 * @return [type]
 	 */
	protected function hotProduct ()
	{
		$hotProduct=\DB::table('products')
                    ->join('orders', 'products.id', '=', 'orders.product_id')
                    ->select(\DB::raw('sum(qty) as amount_qty, status_order,products.id,products.name, products.price, products.image,products.status_product'))
                    ->whereRaw('products.status_product <> 0')
                    ->orderBy('amount_qty', 'desc')
                    ->groupBy('product_id')
                    ->skip(0)->take(4)->get();
        return $hotProduct;
	}
	/**
	 * data discount Products
	 * @return [type] [description]
	 */
	protected function discountProduct()
	{
		return Product::whereRaw('discount > 0 and status_product <> 0')
				        			->orderBy('discount','desc')
									->skip(0)
									->take(4)
									->get();   
	}
	/**
	 * new product
	 * @return [type] [description]
	 */
	protected function newProduct()
	{
		return Product::whereRaw('status_product <> 0')->orderBy('created_at','desc')->skip(0)->take(4)->get();
    
	}
	/**
	 * find a products by name
	 * @return [type] [description]
	 */
	protected function searchNameProduct($nameproduct)
	{

		return $a=Product::whereRaw("name like '%$nameproduct%' and status_product <> 0")->get()->toArray();
	}

}

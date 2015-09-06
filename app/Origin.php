<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Origin extends Model {

	protected $table='origins';
	protected $fillable=[
		'name'
	];
	/**
	 * [product description]
	 * @return [type]
	 */
	public function product(){
		return $this->hasMany('App\Product','origin_id','id');
	}

}

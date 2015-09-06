<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Ship extends Model {

	protected $table    ='ships';
	protected $fillable =['name','price'];

	public function transaction(){
		return $this->hasMany('App\Transaction','ship_id','id');
	}
}

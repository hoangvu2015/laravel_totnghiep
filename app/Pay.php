<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Pay extends Model {
	
	protected $table    ='pays';
	protected $fillable =['name'];

	public function transaction(){
		return $this->hasMany('App\Transaction','pay_id','id');
	}
}

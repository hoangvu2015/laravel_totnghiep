<?php namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

class Customer extends Model implements AuthenticatableContract, CanResetPasswordContract {

	use Authenticatable, CanResetPassword;

	protected $table    ='customers';
	protected $fillable =[
			'name',
			'email',
			'phone',
			'address',
			'role',
			'password'
	];
	protected $hidden = ['password', 'remember_token'];

	public function transaction(){
		return $this->hasMany('App\Transaction','customer_id','id');
	}

	protected function checkUser($email,$password)
	{
		
		$customer = Customer::where('email','=',$email)->get();
		
		if(count($customer)==0){	
			return false;
		}else {
			foreach ($customer as $key => $value) {
				if(\Hash::check($password,$value['password'])){
					\Session::put('name',$value['name']);
					\Session::put('email',$value['email']);
					\Session::put('role',$value['role']);
					return true;
				}else{
					 return false;
				} 
			}
		
		}
	}


}

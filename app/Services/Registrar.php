<?php namespace App\Services;

use App\User;
use App\Customer;
use Validator;
use Illuminate\Contracts\Auth\Registrar as RegistrarContract;

class Registrar implements RegistrarContract {

	/**
	 * Get a validator for an incoming registration request.
	 *
	 * @param  array  $data
	 * @return \Illuminate\Contracts\Validation\Validator
	 */
	public function validator(array $data)
	{
		return Validator::make($data, [
			'name'             =>'required|min:3',
			'email'            =>'required|email|unique:customers',
			'password'         =>'required|alpha_num|min:3',
			'password_confirm' =>'required|alpha_num|min:3|same:password',
			'phone'            =>'required|numeric|min:10',
			'address'          =>'required'
		]);
	}

	/**
	 * Create a new user instance after a valid registration.
	 *
	 * @param  array  $data
	 * @return User
	 */
	public function create(array $data)
	{
		return Customer::create([
			'name'     => $data['name'],
			'email'    => $data['email'],
			'password' => bcrypt($data['password']),
			'phone'    =>$data['phone'],
			'address'  =>$data['address']
		]);
	}

}

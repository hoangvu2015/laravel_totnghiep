<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class ProductCreateRequest extends Request {

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize()
	{
		return true;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		return [
			'name'=> 'required|min:3',
			'price'=>'required|numeric',
			'qty_inventory'=>'required|numeric',
			'content'=>'required|min:10',
			'discount'=>'required|integer',
			'image'=>'required'
		];
	}

}

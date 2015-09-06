<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class ProductUpdateRequest extends Request {

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
			'qty_inventory'=>'required|numeric',
			'price'=>'required|numeric',
			'content'=>'required|min:10',
			'discount'=>'required|integer',
		];
	}

}

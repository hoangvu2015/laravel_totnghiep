<?php namespace App\Http\Controllers;
use App\Http\Requests\CustomerRequest;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Customer;
use App\Product;
use App\Category;
use App\Http\Requests\CustomerUpdateRequest;
use Input;
use Illuminate\Http\Request;

class CustomerController extends Controller {
	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		$this->middleware('auth');
	}
	

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$customer = Customer::paginate(5);

		return view('customers.index',compact('customer'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$create=true;// de hien thi textbox password
		return view('customers.create')->with('create',true);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(CustomerRequest $request)
	{
		if($request->get('role')==false){
			$role=0;
		}else{
			$role=1;
		}

		$data=[
			'name'    => $request->get('name'),
			'email'   => $request->get('email'),
			'phone'   => $request->get('phone'),
			'address' => $request->get('address'),
			'password'=>bcrypt($request->get('password')),
			'role' 	  => $role
		];

		Customer::create($data);
		return redirect()->route('customer.index');
		
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$customer = Customer::find($id);
		return view('customers.edit',compact('customer'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(CustomerUpdateRequest $request,$id)
	{
		// $customer = Customer::find($id);
		// if($customer->email==Input::get('email')){
		// 	$email = Input::get('email');
		// }else{
		// 	//$email = $request->get('email');
		// }
		if($request->get('role')==true){
			$role=1;
		}else{
			$role=0;
		}


		$data=[

			'name'    => $request->get('name'),
			'email'   => $request->get('email'),
			'phone'   => $request->get('phone'),
			'address' => $request->get('address'),
			'role' 	  => $role
			//'password'=>$request->bcrypt($request->get('password'))
		];
		
		$customer = Customer::find($id);
		$customer->update($data);
		return redirect()->route('customer.index');

	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$customer = Customer::find($id);
		$customer->delete($id);
		return redirect()->route('customer.index');
	}
	
}

<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Transaction;
use App\Customer;
use App\Pay;
use App\Ship;

use Illuminate\Http\Request;

class TransactionController extends Controller {
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
	 * detail transaction
	 * @return [type] [description]
	 */
	public function detailTransaction($id)
	{
		$transaction_order = Transaction::detailTransaction($id);
		//dd($transaction->toArray());
		return view('transactions.detail_transaction', compact('transaction_order'));
	}
	
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$transaction =Transaction::getTransaction();
		return view('transactions.index',compact('transaction'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$customer =Customer::lists('name','id');
		$ship     =Ship::lists('name','id');
		$pay      =Pay::lists('name','id');
		return view('transactions.create',compact('customer','ship','pay'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Request $request)
	{
		//Status
		if($request->get('status') ==false){
			$status =0;
		}else
			$status =1; 

		$data=[
			'customer_id'    => $request->get('customer_id'),
			'pay_id'         => $request->get('pay_id'),
			'ship_id'        => $request->get('ship_id'),
			'account_number' => $request->get('account_number'),
			'message'        => $request->get('message'),
			'security'       => time(),
			'status'         => $status
		];
		Transaction::create($data);
		return redirect()->route('transaction.index');
		//dd($data);
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
		
		$transaction =Transaction::find($id);
		$customer    =Customer::lists('name','id');
		$ship        =Ship::lists('name','id');
		$pay         =Pay::lists('name','id');
		
		return view('transactions.edit',compact('transaction','customer','ship','pay'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $id)
	{
		if($request->get('status') ==false){
			$status =0;
		}else
			$status =1;

		$data=[
			'customer_id' => $request->get('customer_id'),
			'pay_id'      => $request->get('pay_id'),
			'ship_id'     => $request->get('ship_id'),
			'amount'      => $request->get('amount'),
			'message'     => $request->get('message'),
			'account_number' => $request->get('account_number'),
			'security'    => time(),
			'status'      => $status
		];
		$transaction =Transaction::find($id);
		$transaction->update($data);
		return redirect()->route('transaction.index');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$transaction =Transaction::find($id);
		$transaction->delete($id);
		return redirect()->route('transaction.index');
	}

}

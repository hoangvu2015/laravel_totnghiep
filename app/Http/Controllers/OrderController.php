<?php namespace App\Http\Controllers;
use App\Http\Requests\OrderRequest;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Order;
use App\Transaction;
use App\Product;

use Illuminate\Http\Request;

class OrderController extends Controller {
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
	 * [sum_amount description]
	 * //sum amount transaction.
	 * @param  [type]
	 * @return [type]
	 */
	public function sum_amount($id)
	{
		$transaction = Transaction::find($id);
		//$transaction->order;
		$sum         = 0;
		foreach ($transaction->order as $key) {
			$sum += $key->qty*$key->price_order*(100-$key->discount_order)/100;
		}
		return $sum;
	}
	
	
	/**
	 * [update_transaction description]
	 * //update amount transaction.
	 * @param  [type]
	 * @return [type]
	 */
	public function update_transaction($id)
	{
		
		$data=[	

			'amount' => $this->sum_amount($id)
		];

		$transaction = Transaction::find($id);
		$transaction->update($data);
		return redirect()->route('order.index');
	}


	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$order = Order::orderBy('transaction_id', 'asc')->paginate(5);
		return view('orders.index',compact('order'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$transaction = Transaction::lists('id','id');
		$product     = Product::lists('name','id');
		return view('orders.create',compact('product','transaction'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(OrderRequest $request)
	{
		//status_order
		if($request->get('status_order') ==true){
			$status_order =1;
		}else{
			$status_order =0;
		}
		//amount_order
		$product =Product::find($request->get('product_id'));
		// if($product->discount==0){
		// 	$amount_order =$request->get('qty')*$product->price;
		// }elseif ($product->discount ==100) {
		// 	$amount_order =0;
		// }else{
		// 	$amount_order =$request->get('qty')*$product->price*$product->discount/100;
		// }


		$data=[

			'transaction_id' => $request->get('transaction_id'),
			'product_id'     => $request->get('product_id'),
			'qty'            => $request->get('qty'),
			'note'           => $request->get('note'),
			'price_order'    =>$product->price,
			'discount_order' =>$product->discount,
			//'amount_order' => $amount_order,
			'status_order'   => $status_order
		];
		//dd($data);

		Order::create($data);
		$this->update_transaction($data['transaction_id']);//update amount transaction.
		return redirect()->route('order.index');
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
		$edit        = true; //hien thi ten khach hang 
		$order       = Order::find($id);
		$transaction = Transaction::lists('id','id');
		$product     = Product::lists('name','id');
		return view('orders.edit',compact('order','transaction','product','edit'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(OrderRequest $request, $id)
	{
		//status_order
		if($request->get('status_order') ==true){
			$status_order =1;
		}else{
			$status_order =0;
		}
		//amount_order
		$product =Product::find($request->get('product_id'));
		// $amount_order =$request->get('qty')*$product->price;

		$data=[
			'transaction_id' => $request->get('transaction_id'),
			'product_id'     => $request->get('product_id'),
			'qty'            => $request->get('qty'),
			'note'           => $request->get('note'),
			'price_order'    =>$product->price,
			'discount_order' =>$product->discount,
			//'amount_order'   => $amount_order,
			'status_order'   => $status_order
		];
		
		$order =Order::find($id);
		$order->update($data);
		$this->update_transaction($data['transaction_id']);//update amount transaction.
		return redirect()->route('order.index');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$order =Order::find($id);
		$order->delete($id);
		$this->update_transaction($order->transaction_id);//update amount transaction.
		return redirect()->route('order.index');
	}

}

<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\CartRequest;
use App\Http\Requests\CheckCartRequest;
use App\Http\Controllers\Controller;
use App\Product;
use App\Category;
use App\Transaction;
use App\Order;
use App\Pay;
use App\Ship;
use Illuminate\Http\Request;

class CartController extends Controller {

	/**
	 * Display a listing of the resource.
	 * // show cart
	 * @return Response
	 */
	public function getIndex() 
	{
	//MENU
		$mainMenu=Category::getParentMenu();
		$allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
	//PAY
		$pay=Pay::lists('name','id');
	//SHIP
		$ship=Ship::lists('name','id');
		
		if(\Session::has('giohang')){
				$data=\Session::get('giohang');
				return view('fornindex.shopping_cart',compact('ship','pay','data','allMenu','hotProduct','discountProduct'));
			}else{
				echo 'vui long chon san pham!!!';
			}
	}

	/**
	 * Show the form for creating a new resource.
	 *	cancel cart
	 * @return Response
	 */
	public function getCancel() //huy don hang.
	{
		if(\Session::has('giohang')){
			\Session::forget('giohang');
			\Session::forget('pay');
			\Session::forget('ship');
			\Session::forget('total');
		}
		return redirect('/');
	} 

	
	/**
	 * agreed to buy
	 * @param  Request
	 * @return [type]
	 */
	public function postBuy(Request $request)
	{
	//MENU
		$mainMenu=Category::getParentMenu();
		$allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
		if(\Session::has('giohang')){
			$data=\Session::get('giohang');
			
			if($request->get('account_number')!=null){
				$account_number=$request->get('account_number');
			}else
				$account_number=null;

			$transaction=[
				'customer_id' =>\Auth::id(),
				'ship_id'     => \Session::get('ship'),
				'pay_id'      => \Session::get('pay'),
				'amount'      => \Session::get('total'),
				'message'     => $request->get('message'),
				'security'    => time(),
				'account_number'=>$request->get('account_number')
			];
			//dd($transaction);
			$transactions=Transaction::create($transaction);
			//dd($transactions->toArray());
			foreach ($data as $key => $value) {
				$order=[
					'transaction_id'=>$transactions->id,
					'product_id'=>$value['id'],
					'qty'=>$value['qty'],
					'price_order'=>$value['price'],
					'discount_order'=>$value['discount'],
					//'amount_order'=>$value['qty']*$value['price'],

				];
				$orders=Order::create($order);
			}
			$this->getCancel();
			return view('fornindex.shopping_succeed',compact('allMenu','hotProduct','discountProduct'));
		}
	}
	
	/**
	 * Store a newly created resource in storage.
	 * Check, before buy
	 * @return Response
	 */
	public function postCheckcart(Request $request) //allow cart -> check order.
	{
		if(\Auth::check()){
		//MENU
			$mainMenu=Category::getParentMenu();
			$allMenu=Category::getAllMenu($mainMenu);
	    //HOT PRODUCTS.
	        $hotProduct = Product::hotProduct();
	    //DISCOUNT PRODUCTS.
	        $discountProduct = Product::discountProduct();
			//PAY
			$pay=Pay::find($request->get('pay'));
			if($request->get('pay')==2){
				$account_number=true;
			}else
				$account_number=false;
			//SHIP
			$ship=Ship::find($request->get('ship'));
			
			if(\Session::has('giohang')){
				\Session::put('pay',$pay->id);
				\Session::put('ship',$ship->id);
				
				return view('fornindex.shopping_cart_detail',compact('account_number','ship','pay','data','allMenu','hotProduct','discountProduct'));
			}else{
					echo 'vui long chon san pham!!!';
			}
				
		}else
			return redirect('auth/login');
			
	}

	/**
	 * Display the specified resource.
	 * add item in cart 
	 * @param  int  $id
	 * @return Response
	 */
	public function getAdd($id)//add item in cart
	{
		$product = Product::find($id);
		$product->view+=1;
		$product->save();
		$temp=[
			'id'          =>$product->id,
			'name'        =>$product->name,
			'category_id' =>$product->category_id,
			'qty'         =>1,
			'price'       =>$product->price,
			'amount'	  =>$product->price*(100-$product->discount)/100,
			'discount'    =>$product->discount,
			'image'       =>$product->image,
		];
		
			$data = \Session::get('giohang');
		
		if(is_null($data)){
			$data[$product->id]=$temp;//gan Key=$product->id =>value=$temp.
		}
		else if(isset($data[$product->id])){
			$data[$product->id]['qty']+=1;
			$data[$product->id]['amount']=$data[$product->id]['qty']*$data[$product->id]['price']*(100-$data[$product->id]['discount'])/100;
		}else{
			$data[$product->id]=$temp;
		}
	
		\Session::put('giohang',$data);
		$data = \Session::get('giohang');
		echo '<pre>';
		print_r($data);
		$id = \Session::getId();
        echo '<pre>';
		print_r($id);
		// $id_new = \Session::setId('123');
		// \Session::save();
		// echo '<pre>';
		// print_r($id_new);
		//return redirect()->route('index');
		// echo '<pre>';
		// print_r(\Session::get('giohang'));
		//\Session::forget('giohang');
	}


	/**
	 * Update the specified resource in storage.
	 * update cart 
	 * @param  int  $id
	 * @return Response
	 */
	public function postUpdate(CartRequest $request, $id) //update cart
	{
		$data=\Session::get('giohang');
		$data[$id]['qty'] = $request->get('qty');
		$data[$id]['amount'] = $data[$id]['qty']*$data[$id]['price']*(100-$data[$id]['discount'])/100;
		\Session::put('giohang',$data);
		return redirect('/cart/index');
	}

	/**
	 * Remove the specified resource from storage.
	 * delete item in cart 
	 * @param  int  $id
	 * @return Response
	 */
	public function postDestroy($id) //delete item in cart 
	{
		$data=\Session::get('giohang');
		unset($data[$id]);
		if(is_null($data)){
			\Session::forget('giohang');
		}else{
			\Session::put('giohang',$data);
		}
		return redirect('/cart/index');
	}

}

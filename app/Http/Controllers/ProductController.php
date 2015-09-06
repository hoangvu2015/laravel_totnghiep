<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Product;
use App\Category;
use App\Brand;
use App\Origin;
use Input;
use App\Http\Requests\ProductCreateRequest;
use App\Http\Requests\ProductUpdateRequest;
use Illuminate\Http\Request;

class ProductController extends Controller {
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
		$products =Product::paginate(5);
		
		return view('products.index',compact('products'));
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$category =Category::lists('name','id');
		$brand=Brand::lists('name','id');
		$origin=Origin::lists('name','id');
		
		return view('products.create',compact('category','brand','origin'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(ProductCreateRequest $request)//
	{

		$name          = $request->Input('name');
		$category_id   = $request->Input('category_id');
		$brand_id      = $request->Input('brand_id');
		$origin_id     = $request->Input('origin_id');
		$qty_inventory = $request->Input('qty_inventory');
		$price         = $request->Input('price');
		$content       = $request->Input('content');
		$discount      = $request->Input('discount');
		
//Check fileImage
		if($request->hasFile('image')){

			$image     = $request->file('image');
			$imagename = time().'-'.$image->getClientOriginalName();
			$image->move(public_path().'/image',$imagename);	

		}else
			$imagename=null;

//Status
		if($request->Input('status_product')==false){
			$status_product=0;
		}
		else
			$status_product=1;
		

		$data= [
			'name'           => $name,
			'category_id'    => $category_id,
			'brand_id'       =>$brand_id,
			'origin_id'      =>$origin_id,
			'qty_inventory'  =>$qty_inventory,
			'price'          => $price,
			'content'        => $content,
			'discount'       => $discount,
			'image'          => $imagename,
			'status_product' => $status_product
		];
		//dd($data);
		Product::create($data);
		//dd($data);
		//$category = Category::find($category_id);//dong loai SP.
		// $category->product()->create($data); //store database.

		return redirect()->route('product.index');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show()
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
		$product=Product::find($id);
		$category=Category::lists('name','id');
		$brand=Brand::lists('name','id');
		$origin=Origin::lists('name','id');
		return view('products.edit',compact('product','category','brand','origin'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(ProductUpdateRequest $request,$id)
	{
		$product=Product::find($id);

//Check fileImage
		if($request->hasFile('image')){

			$image     =$request->file('image');
			$imagename =time().'-'.$image->getClientOriginalName();
			$image->move(public_path().'/image',$imagename);

		}else
			$imagename=$product->image;

//Status
		if($request->Input('status_product')==false){
			$status_product=0;
		}
		else
			$status_product=1;
		
//data
		$data= [
			//'id'             => $id,
			'name'           => $request->get('name'),
			'category_id'    => $request->get('category_id'),
			'brand_id'       => $request->get('brand_id'),
			'origin_id'      => $request->get('origin_id'),
			'qty_inventory'  => $request->get('qty_inventory'),
			'price'          => $request->get('price'),
			'content'        => $request->get('content'),
			'discount'       => $request->get('discount'),
			'image'          => $imagename,
			'status_product' => $status_product
		];
		
//update		
		//dd($data);
		$product->update($data);
		return redirect()->route('product.index');
		
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{

		$product=Product::find($id);
		$product->delete($id);
		return redirect()->route('product.index');
	}

	

}

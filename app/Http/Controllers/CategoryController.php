<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category;
use App\Product;
use App\Http\Requests\CategoryRequest;
use Illuminate\Http\Request;

class CategoryController extends Controller {
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
		$category = Category::paginate(5);
		return view('categories.index',compact('category'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$category = Category::lists('name','id');
		return view('categories.create', compact('category'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(CategoryRequest $request)
	{			
		$data=[

			'name'      => $request->get('name'),
			'parent_id' => $request->get('parent_id')
		];

		Category::create($data);
		return redirect()->route('category.index');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id=null)
	{
	//MENU
		$mainMenu=Category::getParentMenu();
		$allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    //SAN PHAM CUNG LOAI
		if($id==null){
			
			$category_product=Category::getCategory_Product();
			$nameCategory = "Tất Cả Sản Phẩm";
			return view('fornindex.detail_category',compact('nameCategory','category_product','allMenu','hotProduct','discountProduct'));
		}else{
			$array=Category::getCategory_Product($id);
			$category_product=$array['list'];
			$nameCategory = $array['name'];

			return view('fornindex.detail_category',compact('nameCategory','category_product','allMenu','hotProduct','discountProduct'));
		}
		
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$category        = Category::find($id);
		$category_all    = Category::lists('name','id');	//list parent create
		$category_parent = Category::where('id','<>',$category->id)->lists('name','id'); //list parent show
		return view('categories.edit',compact('category_all','category_parent','category'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(CategoryRequest $request,$id)
	{
		$category = Category::find($id);
		$data=[
			'name'      => $request->get('name'),
			'parent_id' => $request->get('parent_id')
		];
		$category->update($data);
		return redirect()->route('category.index');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$category = Category::find($id);
		$category->delete($id);
		return redirect()->route('category.index');
	}

}

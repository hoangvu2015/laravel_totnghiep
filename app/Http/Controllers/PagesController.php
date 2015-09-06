<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category;
use App\Product;
use App\Order;
use App\Article;

use Illuminate\Http\Request;

class PagesController extends Controller {
    /**
     * 
     */
	public Function index()
    {
        //\Session::getId();
        // echo('<pre>');
        // print_r(\Session::getId());
        // die();
    //MENU
        $mainMenu=Category::getParentMenu();
        $allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    //NEW PRODUCTS.
        $newProduct = Product::newProduct();
    
    //ARTICLES
        $article = Article::getArticle();
        // dd($hotProduct);
		return view('index',compact('allMenu','newProduct','discountProduct','hotProduct','article'));

        // return view("fornindex.detail",compact('allMenu'));
	
		
	}
    /**
     * show product
     * @param  [type] $id [description]
     * @return [type]     [description]
     */
    public function showProduct($id = null)
    {
    //MENU
        $mainMenu=Category::getParentMenu();
        $allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    //CHI TIET
        $detail=Product::find($id);
    //Related product
        $category = Category::find($detail->category_id);
        $product = $category->product()->get();
        //dd($product);
        
        return view('fornindex.detail',compact('product','allMenu','hotProduct','detail','discountProduct'));
    }
	/**
     * Show product by category
     * @return [type] [description]
     */
	public function showByCategory($id = 0)
    {
    //MENU
        $mainMenu=Category::getParentMenu();
        $allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    //SAN PHAM CUNG LOAI
        if($id==0){
            
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
     * show all articles
     * @return [type] [description]
     */
    public function getAllArticle()
    {
    //MENU
        $mainMenu=Category::getParentMenu();
        $allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    //ALL ARTICLES
        $allArticle = Article::allArticle();
        return view('fornindex.allshow', compact('allMenu','hotProduct','discountProduct','allArticle'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function showArticle($id)
    {
    //MENU
        $mainMenu=Category::getParentMenu();
        $allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    //SHOW ARTICLE 
        $showArticle = Article::find($id);
        return view('fornindex.show_article',compact('allMenu','hotProduct','discountProduct','showArticle'));
    }
    /**
     * [getContact description]
     * @return [type] [description]
     */
    public function getContact()
    {
        //MENU
        $mainMenu=Category::getParentMenu();
        $allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    
        return view('fornindex.contact',compact('allMenu','hotProduct','discountProduct'));
    }
    /**
     * [search description]
     * @param  Request $request [description]
     * @return [type]           [description]
     */
    public function search(Request $request)
    {
    //MENU
        $mainMenu=Category::getParentMenu();
        $allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    //SEARCH PRODUCTS.
        $nameproduct=$request->get('search');
        $product=Product::searchNameProduct($nameproduct);  
        return view('fornindex.user_search',compact('product','nameproduct','allMenu','hotProduct','discountProduct'));
    }
    
}

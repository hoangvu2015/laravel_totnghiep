<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category;
use App\Product;
use App\Contact;

use Illuminate\Http\Request;

class ContactController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$contact = Contact::orderBy('status','asc')->paginate(4);
		return view('contacts.index', compact('contact'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
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
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$data = \Input::all();
		$contact = Contact::create($data);
	//MENU
		$mainMenu=Category::getParentMenu();
		$allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
		return view('fornindex.success_contact',compact('allMenu','hotProduct','discountProduct'));
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
	//MENU
		$mainMenu=Category::getParentMenu();
		$allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
    //CONTACT
    	$contact = Contact::find($id);
		return view('contacts.edit',compact('contact','allMenu','hotProduct','discountProduct'));
	
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$data = \Input::all();
		//Status
		if(\Input::get('status')==false){
			$data['status']=0;
		}
		else
			$data['status']=1;
		

		$contact = Contact::find($id);
		$contact->update($data);
		return redirect()->route('contact.index');
		//dd($contact);
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$contact = Contact::find($id);
		$contact->delete($id);
		return redirect()->route('contact.index');
	}

}

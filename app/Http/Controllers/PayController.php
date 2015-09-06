<?php namespace App\Http\Controllers;
use App\Http\Requests\PayRequest;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Pay;
use Illuminate\Http\Request;

class PayController extends Controller {
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
		$pay =Pay::paginate(5);
		return view('pays.index',compact('pay'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('pays.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(PayRequest $request)
	{
		$data=[
		
			'name' => $request->get('name')
		];
		
		Pay::create($data);
		return redirect()->route('pay.index');
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
		$pay =Pay::find($id);
		return view('pays.edit',compact('pay'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(PayRequest $request,$id)
	{
		$pay =Pay::find($id);
		$pay->update(['name' =>$request->get('name')]);
		return redirect()->route('pay.index');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$pay =Pay::find($id);
		$pay->delete($id);
		return redirect()->route('pay.index');
	}

}

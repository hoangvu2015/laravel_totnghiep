<?php namespace App\Http\Controllers;
use App\Http\Requests\ShipRequest;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Ship;
use Illuminate\Http\Request;

class ShipController extends Controller {
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
		$ship=Ship::paginate(5);
		//dd($ship);
		return view('ships.index',compact('ship'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('ships.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(ShipRequest $request)
	{
		$data =[

			'name'  => $request->get('name'),
			'price' => $request->get('price')
		];
		
		Ship::create($data);
		return redirect()->route('ship.index');
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
		$ship =Ship::find($id);
		return view('ships.edit',compact('ship'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(ShipRequest $request, $id)
	{
		$data=[
		
			'name'  => $request->get('name'),
			'price' => $request->get('price')
		];
		$ship =Ship::find($id);
		$ship->update($data);
		return redirect()->route('ship.index');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$ship =Ship::find($id);
		$ship->delete($id);
		return redirect()->route('ship.index');
	}

}

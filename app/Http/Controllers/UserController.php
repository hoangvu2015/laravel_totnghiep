<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\User;
class UserController extends Controller {
	public function test()
	{
		return view('test4');
	}
	// public function viewIndex()
	// {
	// 	$users = \DB::table('users')->get();//User::all();
	// 	//dd($users);
	// 	return view('users.list', compact('users'));
	// }

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$users = User::all();//User::all();
		//dd($users);
		return view('users.index1', compact('users'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{	$user = new User();
		return view('users.create',['user'=>$user]);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$data = \Input::all();
		// $user = User::create([
		// 	'name' => $data['name'],
		// 	'email' => $data['email'],
		// 	'password' => bcrypt($data['password']),
		// ]);
		return $data;
	}
	public function createUser()
	{
		$data = \Input::all();
		$data['password'] = bcrypt($data['password']);
		$userModel = new User();
		$user = $userModel->create($data);
		return $user;
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
		$user = User::find($id);
		return view('users.create',['user'=>$user]);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//dd($id);
		$data = \Input::all();
		$user = User::find($id);

		if(!empty($user)) {
			$user->update([
				'name' => $data['user']['name'],
				'email' => $data['user']['email'],
				//'password' => bcrypt($data['user']['password']),
			]);
			$user['status_edit']=1; //edit
			return $user;
		}
		return $user['status_edit']=0;
		
		
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$user = User::find($id);
		$status = 0;
		if(!empty($user)) {
			$status = $user->delete();
		}
		return empty($status)? 
			['status'=>0, 'message'=>'user not found'] : 
			['status'=>1, 'message'=>'delete user success'];
	}

}

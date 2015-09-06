<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\ArticleRequest;
use App\Http\Controllers\Controller;
use App\Article;
use App\Category;
use App\Product;

use Illuminate\Http\Request;

class ArticleController extends Controller {
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
		$article =Article::paginate(5);
		
		return view('articles.index',compact('article'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('articles.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(ArticleRequest $request)
	{
		$name    = $request->Input('name');
		$summary = $request->Input('summary');
		$content = $request->Input('content');
		
		
//Check fileImage
		if($request->hasFile('image')){

			$image     = $request->file('image');
			$imagename = time().'-'.$image->getClientOriginalName();
			$image->move(public_path().'/image',$imagename);	

		}else
			$imagename=null;

//Status
		if($request->Input('status')==false){
			$status=0;
		}
		else
			$status=1;
		

		$data= [
			'name'    => $name,
			'summary' => $summary,
			'content' =>$content,
			'image'   =>$imagename,
			'status'  =>$status,
			
		];
		//dd($data);
		Article::create($data);		
		return redirect()->route('article.index');
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$article = Article::find($id);
		return view('articles.edit',compact('article'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(ArticleRequest $request ,$id)
	{
		$article=Article::find($id);

//Check fileImage
		if($request->hasFile('image')){

			$image     =$request->file('image');
			$imagename =time().'-'.$image->getClientOriginalName();
			$image->move(public_path().'/image',$imagename);

		}else
			$imagename=$article->image;

//Status
		if($request->Input('status')==false){
			$status=0;
		}
		else
			$status=1;
		
//data
		$data= [
			
			'name'    => $request->get('name'),
			'summary' => $request->get('summary'),
			'content' => $request->get('content'),
			'image'   => $imagename,
			'status'  => $status
		];
		
//update		
		//dd($data);
		$article->update($data);
		return redirect()->route('article.index');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$article=Article::find($id);
		$article->delete($id);
		return redirect()->route('article.index');
	}

}

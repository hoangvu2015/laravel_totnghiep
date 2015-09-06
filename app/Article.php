<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model {

	protected $table = 'articles';
	protected $fillable = [
		'name',
		'content',
		'summary',
		'image',
		'status'
	];
	/**
	 * [getArticle description]
	 * @return [type] [description]
	 */
	protected function getArticle()
	{
		return Article::whereRaw('status <> 0')->orderBy('created_at','desc')->skip(0)->take(2)->get();
	}
	/**
	 * show all Articles
	 * @return [type] [description]
	 */
	protected function allArticle()
	{
		return $allArticle = Article::whereRaw('status <> 0')->paginate(4);
	}
}

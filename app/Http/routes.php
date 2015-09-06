<?php
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------

|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
//test
	
	Route::get('test/test1','TestController@testPlay');
	Route::get('test1', 'TestController@testDirective');
	Route::post('users/create-user', 'UserController@createUser');
	Route::resource('users', 'UserController');



	Route::get('/users/list', 'UserController@viewIndex');
	Route::get('/test', 'TestController@test');
	

//=================================================
//USER

		Route::get('home', ['middleware' => 'auth' ,'as'=>'admin', 'uses'=>'HomeController@index']);//route trang chu admin

		Route::get('/', ['as'=>'index','uses'=>'PagesController@index']);  //route trang chu user
		Route::get('/show-product/{id}', ['as'=>'index.showproduct','uses'=>'PagesController@showProduct']);  //route show product
		Route::get('/show-by-category/{id}', ['as'=>'index.showbycategory','uses'=>'PagesController@showByCategory']);  //route show product by category
		Route::get('/show-article', ['as'=>'index.show_all_article','uses'=>'PagesController@getAllArticle']);  //route show product by category
		Route::get('/show-article/{id}', ['as'=>'index.show_article','uses'=>'PagesController@showArticle']);  //route show product by category

		Route::get('/product/allshow',[ 'as'=>'product.allshow','uses'=> 'CategoryController@show']);  //route get all_product
		Route::get('/article/allshow',[ 'as'=>'article.allshow','uses'=> 'ArticleController@allshow']);  //route get all_article
		Route::post('/index/user/search',[ 'as'=>'product.search','uses'=> 'PagesController@search']);  //user search.
		//contact
		Route::get('contact',[ 'as'=>'index.contact','uses'=> 'PagesController@getContact']);  
		Route::post('contact',[ 'as'=>'index.contact','uses'=> 'PagesController@getContact']);  

		Route::controller('cart', 'CartController');


//ADMIN
			Route::resource('product','ProductController');
			Route::resource('category', 'CategoryController');
			Route::resource('customer', 'CustomerController');
			Route::resource('pay', 'PayController');
			Route::resource('ship', 'ShipController');
			Route::resource('transaction', 'TransactionController');
			Route::resource('order', 'OrderController');
			Route::resource('account', 'AccountController');
			Route::resource('article', 'ArticleController');
			Route::resource('company', 'CompanyController');
			Route::resource('contact', 'ContactController');
			Route::resource('brand', 'BrandController');
			Route::resource('origin', 'OriginController');
			
			Route::get('/transaction/detail/{id}',['as'=>'transaction.detail','uses'=>'TransactionController@detailTransaction']);
		
			Route::controllers([
				'auth' => 'Auth\AuthController',
				'password' => 'Auth\PasswordController',
			]);
			

		


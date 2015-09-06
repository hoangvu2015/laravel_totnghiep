<?php namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Contracts\Auth\Registrar;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use App\Category;
use App\Product;
use App\Customer;
class AuthController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Registration & Login Controller
	|--------------------------------------------------------------------------
	|
	| This controller handles the registration of new users, as well as the
	| authentication of existing users. By default, this controller uses
	| a simple trait to add these behaviors. Why don't you explore it?
	|
	*/
	protected $redirectPath = 'home';
	use AuthenticatesAndRegistersUsers;

	/**
	 * Create a new authentication controller instance.
	 *
	 * @param  \Illuminate\Contracts\Auth\Guard  $auth
	 * @param  \Illuminate\Contracts\Auth\Registrar  $registrar
	 * @return void
	 */
	public function __construct(Guard $auth, Registrar $registrar)
	{
		$this->auth = $auth;
		$this->registrar = $registrar;

		$this->middleware('guest', ['except' => 'getLogout']);
	}

	public function getRegister()
	{
	//MENU
		$mainMenu=Category::getParentMenu();
		$allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
		return view('accounts.registered',compact('allMenu','hotProduct','discountProduct'));
	}

	public function postRegister(Request $request)
	{
		$validator = $this->registrar->validator($request->all());

		if ($validator->fails())
		{
			$this->throwValidationException(
				$request, $validator
			);
		}

		$this->auth->login($this->registrar->create($request->all()));

		return redirect($this->redirectPath());
	}

	public function getLogin()
	{
	//MENU
		$mainMenu=Category::getParentMenu();
		$allMenu=Category::getAllMenu($mainMenu);
    //HOT PRODUCTS.
        $hotProduct = Product::hotProduct();
    //DISCOUNT PRODUCTS.
        $discountProduct = Product::discountProduct();
		return view('accounts.login',compact('allMenu','hotProduct','discountProduct'));
	}

	public function postLogin(Request $request)
	{
		$this->validate($request, [
			'email' => 'required|email', 'password' => 'required',
		]);

		$credentials = $request->only('email', 'password');

		if ($this->auth->attempt($credentials, $request->has('remember')))
		{
			if(\Auth::user()->role==1)
				return redirect()->intended($this->redirectPath());
			else
				return redirect('/');
		}

		return redirect($this->loginPath())
					->withInput($request->only('email', 'remember'))
					->withErrors([
						'email' => $this->getFailedLoginMessage(),
					]);
	}

}

<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    public function showLoginForm(){
        return view('welcome');
    }

    public function login(Request $request){

        $this->validateLogin($request);      
 
         if (Auth::attempt(['email' => $request->email,'password' => $request->password,'habilitado'=>1])){
             return redirect('/home');
         }/* elseif(Auth::attempt(['email' => $request->email,'password' => $request->password,'habilitado'=>0])){
            return back()->withErrors(['email' => trans('auth.disabled')])
            ->withInput(request(['email']));
         } */

         return back()->withErrors(['email' => trans('auth.failed')])
         ->withInput(request(['email']));
     }

     protected function validateLogin(Request $request){
        $this->validate($request,[
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

    }

    public function logout(Request $request){
        Auth::logout();
        $request->session()->invalidate();
        return redirect('/');
    }
}

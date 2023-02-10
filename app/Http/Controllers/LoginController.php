<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use DB;

class LoginController extends Controller
{
    
        // public function index(){
        //     return view('/Overview', [
        //         'title' => 'Login',
        //         'active' => 'login'
        //     ]);
        // }

        // public function authenticate(Request $request){
        //     $credentials = $request->validate([
        //         'user_name' =>'required',
        //         'password' => 'required'
        //     ]);
            
        //     // if(Auth::attempt($credentials)){
                
        //     //     $userlogin = Auth::user();
        //     //     $userlogin->last_login = Carbon::now()->format('m');
        //     //     $userlogin->save();
        //     //     $request->session()->regenerate();
        //     //     return redirect()->intended('/Overview');
                
        //     // }
            
        //     return view('/Overview');
        //     // return back()->with('loginError', 'Login Failed!');
        // }

        // public function login (Request $request){
        //     $data = $request->validate([
        //         'user_name' => 'required',
        //         'password' => 'required'
               
        //     ]);

        //     if (Auth::attempt($data)) {
        //         $request->session()->regenerate();
        //         return redirect('Overview');
        //     }
        //         return back();    
            
           
        // }
        public function login(Request $request)
        {
            $data= $request->validate([
                'nip' => 'required',
                'password' => 'required',
            ]);
       
            if (Auth::attempt($data)) {
                $request ->session()->regenerate();
                   return redirect('/Overview');
                }
      
             return back()->withSuccess('Login details are not valid');
         }

       
            
        }

    //     public function logout(){
    //         Auth::logout();
    //         request()->session()->invalidate();
    //         request()->session()->regenerateToken();
    //         return redirect('/LoginPage');
    //     }
     

<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/KantorCabang', function () {
//     return view('KantorCabang');
// });

Route::get('/LoginPage', function () {
    return view('LoginPage');
});

Route::get('/Overview', function () {
    $user = DB::table('users')->count();
    $superadmin =  DB::table('users')->where('role','Super Admin')->count();
    $kantorcabang = DB:: table('kantor_cabangs')->count();
    return view('Overview',compact('user','superadmin','kantorcabang'));
});

Route::get('/OverviewKantorCabang', function () {
    return view('OverviewKantorCabang');
});

Route::get('/OverviewKantorCabang6', function () {
    return view('OverviewKantorCabang6');
});

Route::get('/OverviewKantorCabang7', function () {
    return view('OverviewKantorCabang7');
});

Route::get('/OverviewKantorCabang8', function () {
    return view('OverviewKantorCabang8');
});

Route::get('/KantorCabangCreate', function () {
    return view('KantorCabangCreate');
});

Route::get('/UserAfterCreate', function () {
    return view('UserAfterCreate');
});

Route::get('/UserCreateUser', function () {
    return view('UserCreateUser');
});

Route::get('/OutletCreate', function () {
    return view('OutletCreate');
});

Route::get('/UserDeleteUser', function () {
    return view('UserDeleteUser');
});

Route::get('/UserUpdateUser', function () {
    return view('UserUpdateUser');
});

Route::get('/login','App\Http\Controllers\LoginController@login');

Route::get('/User', 'App\Http\Controllers\UserController@showuser');
Route::get('/createuser', 'App\Http\Controllers\UserController@store');
Route::get('/updateuser/{id}', 'App\Http\Controllers\UserController@edit');
Route::put('/update/{id}', 'App\Http\Controllers\UserController@update');
Route::delete('/delete/{id}', 'App\Http\Controllers\UserController@destroy');

Route::get('/createoutlet', 'App\Http\Controllers\OutletController@storeoutlet');
Route::get('/KantorCabang', 'App\Http\Controllers\OutletController@showoutlet');
Route::get('/view', 'App\Http\Controllers\OutletController@view');
Route::get('/OverviewKantorCabang/{id}', 'App\Http\Controllers\OutletController@edit');
 Route::get('/KantorCabangCreate/{id}', 'App\Http\Controllers\OutletController@view');
 Route::put('/updateKantorCabang/{id}', 'App\Http\Controllers\OutletController@updateKantor');
 Route::get('/view/{id}', 'App\Http\Controllers\OutletController@view');
 Route::get('/countuser','App\Http\Controllers\UserController@countuser');
//  Route::put('/updateKantorCabang/{id}', 'App\Http\Controllers\OutletController@updateKantor');
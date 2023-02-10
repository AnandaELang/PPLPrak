<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\OutletBtn;
use App\Models\KantorCabang;
use App\Models\Items;
use DB;

use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    // public function index(){
    //     $kantorcabang = KantorCabang::all();
    //     $user = User::all();
    //     return view('user.index',compact('user'));
    // }
    // public function create(){
    
    //     $kantorcabang = KantorCabang::all();
    //     return view('user.create');
    // }
    // public function store(Request $request){

        
    //     $validated=$request->validate([
    //         'first_name' => 'required',
    //         'last_name' => 'required',
    //         'password'=> 'required',
    //         'user_email' => 'required',
    //         'nip' => 'required',
    //         'kantor_cabang' => 'required',
    //         'role' => 'required',
    //     ]);
    //     $data=[
    //         'user_name' => $validated['user_name'],
    //         'user_email' => $validated['user_email'],
    //         'password' => $validated['password'],
    //         'role' => $validated['role'],
    //         'kantor_cabang_id' => $validated['kantor_cabang_id'],
    //         'last_login'=> Carbon::now()->toDateTimeString()
    //     ];
    //     $data['password'] = bcrypt($data['password']);
        
    //     User::create($data);
    //     //$request->session()->flash('success', 'Registration Successfull! Please Login');
 
    //     return redirect('/home')->with('success', 'Registration Successfull! Please Login');
    // }

    // public function edit($id){
    //     $user = User::find($id);
    //     if (Auth::user()->kantor_cabang_id == $user->kantor_cabang_id) {
    //         return view('user.edit',compact('user'));
    //     } else {
    //         return view('user.index');
    //     }
    // }
    // public function update(Request $request,$id){
    //     $user = User::find($id);
    //     $user-> user_name = $request->input('user_name');
    //     $user-> user_email = $request->input('user_email');
    //     $user-> password = $request->input('password');
    //     $user-> role = $request->input('role');
    //     $user-> kantor_cabang_id = $request->input('kantor_cabang_id');;
    //     // if ($request->hasfile('image')){
    //     //     $destination = 'uploads/user/'.$user->image;
    //     //     if (File::exists($destination)){
    //     //         File::delete($destination);
    //     //     }
    //     //     $file = $request->file('image');
    //     //     $extension = $file->getClientOriginalExtension();
    //     //     $filename = time().'.'.$extension;
    //     //     $file-> move('uploads/user/',$filename);
    //     //     $user->image = $filename;
    //     // }
    //     $user->save();
    //     return redirect()->back()->with('status','Pesan : User telah diperbarui');
    // }

    public function store(Request $request){
        
        $user = new User;
 
        $user->frist_name = $request->frist_name;
        $user->last_name = $request->last_name;
        $user->user_email = $request->user_email;
        $user->password = $request->password;
        $user->nip = $request->nip;
        $user->kantor_cabang = $request->kantor_cabang;
        $user->role = $request->role;
        $user->password = Hash::make($request->password);
        $user->save();
        return redirect('User');
    }

    public function showuser(){
        $data =DB::table('users')->get();
      
        return view('User',compact('data'));
    }
    // public function edit(Student $student)
    // {
    //     return view('students.UserUpdateUser',compact('student'));
    // }



        public function edit($id){
            $data = User::find($id);
            return view('UserUpdateUSer',compact('data'));
        }

        public function update($id, Request $request){
            $data = User::find($id);
            $data->update($request->except(['_token','submit']));
          

            return redirect('User');
        }

        public function destroy($id ,Request $request){
            $data = User::find($id);
            $data->delete($request->except(['_token','delete']));
            return redirect('User');
        }

        // public function countuser(){
        //     $user = Users::count();
        //      return view('OverView',compact('user'));
        //  }
 }
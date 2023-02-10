<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KantorCabang;
use App\Models\Items;
use DB;

use Illuminate\Support\Facades\Hash;

class OutletController extends Controller
{
    public function storeoutlet(Request $request){
        
        $user = new KantorCabang;
 
        $user->kantor_cabang_name = $request->kantor_cabang_name;
        $user->status = $request->status;
        $user->jumlah_mesin = $request->jumlah_mesin;
        $user->kantor_cabang_location = $request->kantor_cabang_location;
        $user->catatan = $request->catatan;
        $user->save();
        return redirect('KantorCabang');
    }

    public function showoutlet(){
        $data =DB::table('kantor_cabangs')->get();
        return view('KantorCabang',compact('data'));
    }

    public function edit($id){
    $data = KantorCabang::find($id);
    return view('OverviewKantorCabang',compact('data'));
    }
    
    public function updateKantor($id, Request $request){
        $data = KantorCabang::find($id);
        $data->update($request->except(['_token','submit']));
        return view('OverviewKantorCabang', compact('data'));
    }

    public function view($id, Request $request){
        $data = KantorCabang::find($id);
        return view('KantorCabangCreate',compact('data'));
    }
}

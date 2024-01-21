<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class ApiController extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;
    function index(){
        $User = new User();
        $data = User::all();
        return json_encode($data);
    }
    function get_user(){
        $User = new User();
        $data = User::all();
        return json_encode($data);
    }
    function addUser(Request $request){
        $request->validate([
            'mobileno'=>'required',
            'otp'=>'required',
        ]);
        $user = new User;
        $lastuser = $user->orderBy('id', 'desc')->first();
        $referal_code = '#SBM-2'.str_pad($lastuser->id, 7, "0", STR_PAD_LEFT);
        $data = User::where('mobileno', $request->mobileno)->first();
        if($data){
            $res = $user->where('id', $data->id)
            ->update(['otp' => $request->otp]);;
            return response()->json(['msg'=>'loged in','status'=>'200']);
        }else{
            $user->mobileno = $request->mobileno;
            $user->otp = $request->otp;
            $user->refered_by = $request->refered_by;
            $user->referal_code = $referal_code;
            $res = $user->save();
            if($res){
                return response()->json(['msg'=>'user added','status'=>1,'referal_code'=>$referal_code]);
            }else{
                return response()->json(['msg'=>'Failed','status'=>0]);
            }
        }
    }
    function verify_otp(Request $request){
        $otp = $request->otp;
        $mobileno = $request->mobileno;
        $data = User::where(['mobileno'=> $mobileno,'otp'=>$otp])->first();
        if($data){
            return response()->json(['msg'=>'Success','status'=>1,'body'=>json_decode($data)]);
        }else{
             return response()->json(['msg'=>'Invalid OTP!','status'=>0,'body'=>null]);
        }
    }
}

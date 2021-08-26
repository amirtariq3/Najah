<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Hash;
use Auth;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $r)
    {
        $data=User::create([

            'name'=>$r->name,
            'shop_name'=>$r->shop_name,
            'email'=>$r->email,
            'phone'=>$r->phone,
            'city'=>$r->city,
            'address'=>$r->address,
            'password'=>Hash::make($r->password),
            'status'=>$r->status??null
        ]);
        return response()->json(['message'=>'Congratulation User Register Successfully', 'data'=>$data]);
    }

    public function login(){
        if(auth::attempt(['email' => request('email'), 'password' => request('password')])){ 
            $token=auth()->user()->createToken('MyApp')-> accessToken; 
            return response()->json(['message'=>'user login successfully','data'=>auth()->user(),'token'=>$token], 200);
        } 
        else{ 
            return response()->json(['error'=>'Unauthorised'], 401); 
        } 
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        if (Auth::check()) {
            $data=Auth()->user();
        return response()->json(['data'=>$data], 200);
        }
        else
        {
            return response()->json(['error'=>'Unauthorised'], 401);
        }
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function logout(Request $request)
    {
        
            $token = $request->user()->token();
            $token->revoke();
            $response = ['message' => 'You have been successfully logged out!'];
            return response($response, 200);
        
    }
}

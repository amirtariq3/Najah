<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=User::all();
        return view('admin.user.list', ['data'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.adminregister');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $r)
    {
        //dd($r->all());
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
        return redirect()->back()->withwith('success', 'User Created!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=User::find($id);
        return view('admin.user.update', ['data'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $r, $id)
    {
        $data=User::find($id);
        $data->name=$r->name??$data->name;
        $data->shop_name=$r->shop_name??$data->shop_name;
        $data->email=$r->email??$data->email;
        $data->phone=$r->phone??$data->phone;
        $data->city=$r->city??$data->city;
        $data->address=$r->address??$data->address;
        $data->status=$r->status??$data->status;
        $data->save();
        return redirect()->route('admin.user.index')->with('success', 'User Updated!');
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
}

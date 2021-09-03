<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Auth;
use Cart;

class CartController extends Controller
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
    public function store(Request $r,$id)
    {
        $pro=Product::where('id', $id)->first();
        //echo $pro; die;
        $user=Auth()->user()->id;
       \Cart::session($user)->add(array(
        'id' => $pro->id,
        'name' => $pro->name,
        'price' => $pro->price,
        'quantity' => $r->quantity,
        'attributes' => array('image', $pro->image),
    ));
        return response()->json(['message'=>'product enter into cart']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        //if (Auth::guard('api')->check()) {
          //  $userID = auth('api')->user()->getKey();
        //}
        $user=Auth()->user()->id;
        $data=\Cart::session($user)->getContent('id');
        $subTotal = Cart::getSubTotal();
        return response()->json(['data', $data, 'total Price', $subTotal]);
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
        $uid=Auth::user()->id;
        $del=\Cart::session($uid)->remove($id);
        return response()->json(['message'=>'Prodect remove successfully from your cart']);
    }
}

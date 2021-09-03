<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderProduct;
use Auth;
use Cart;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user=Auth()->user();
        $user_id=$user->id;
        $data=new Order;
        $data->user_id=$user_id;
        $data->name=$user->name;
        $data->email=$user->email;
        $data->phone=$user->phone;
        $data->address=$user->address;
        $data->shop_name=$user->shop_name;
        $data->save();
        $product=\Cart::session($user_id)->getContent('id');
        $order=Order::latest()->first();
        $order_id=$order->id;
        foreach ($product as $p) {
            
            $order_product=new OrderProduct;
            $order_product->user_id=$user_id;
            $order_product->order_id=$order_id;
            $order_product->product_id=$p->id;
            $order_product->product_name=$p->name;
            $order_product->quantity=$p->quantity;
            $order_product->price=$p->price;
            $order_product->total_price=Cart::getSubTotal();
            $order_product->save();
        }
        return response()->json(['message'=>'Congratulation Order Place Successfully']);
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
    public function store(Request $request)
    {
        //
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
}

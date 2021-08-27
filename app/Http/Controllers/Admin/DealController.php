<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Deal;

class DealController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=Deal::all();
        return view('admin.deal.list', ['data'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cat=Category::all();
        return view('admin.deal.add', ['cat'=>$cat]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $r)
    {
        $data=Deal::create([

            'name'=>$r->name,
            'category_id'=>$r->category,
            'detail'=>$r->detail,
            'old_price'=>$r->old_price,
            'deal_price'=>$r->new_price,
            'quantity'=>$r->quantity,
            'image'=>($r->image)? $this->upload($r->image): null,
            'status'=>$r->status??1
        ]);
        return redirect()->route('admin.deal.index')->with('success', 'Deal Created!');
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
        $cat=Category::all();
        $data=Deal::find($id);
        return view('admin.deal.update', ['cat'=>$cat, 'data'=>$data]);
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
        $data=Deal::find($id);
        $data->name=$r->name??$data->name;
        $data->category_id=$r->category??$data->category_id;
        $data->detail=$r->detail??$data->detail;
        $data->old_price=$r->old_price??$data->old_price;
        $data->deal_price=$r->new_price??$data->deal_price;
        $data->quantity=$r->quantity??$data->quantity;
        $data->image=($r->image)? $this->upload($r->image): $data->image;
        $data->name=$r->name??$data->name;
        $data->status=$r->status??$data->status;
        $data->save();
        return redirect()->route('admin.deal.index')->with('success', 'Deal Updated!');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data=Deal::find($id);
        $data->delete();
        return redirect()->back()->with('success', 'Product Deleted Successfully!');
    }

    public function upload($image, $path="public/images")
    {
        if($image){
            $file = $image;
            $name =  uniqid().".".$file->getClientOriginalExtension();
            $file->move($path, $name);
            return $name;
        }else{
            return null;
        }
    }
}

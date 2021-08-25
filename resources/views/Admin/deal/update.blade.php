@extends('layout.layout')
@section('content')
   
<div class="main-content container-fluid">
<section class="section">
<div class="row mb-4">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class='card-heading p-1 pl-3'>Update Deal</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="card-body">
                        <div class="row">
                        <form method="POST" action="{{route('admin.deal.update',[$data->id])}}" enctype="multipart/form-data">
                            @method('PUT')
                            @csrf
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" id="basicInput" value="{{$data->name}}" placeholder="Enter name" name="name" required>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select class="form-select" id="basicSelect" name="category" required>
                                        <option>Select Category</option>
                                        @foreach ($cat as $c)
                                        <option {{($data->category_id == $c->id)? 'selected': ''}} value="{{$c->id}}">{{$c->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="detail">{{$data->name}}</textarea>
                                 </div>

                                <div class="form-group">
                                    <label>Old Price</label>
                                    <input type="text" class="form-control" id="basicInput" value="{{$data->old_price}}" placeholder="enter old price" name="old_price" required>
                                </div>

                                <div class="form-group">
                                    <label>Deal Price</label>
                                    <input type="text" class="form-control" id="basicInput" value="{{$data->deal_price}}" placeholder="enter new price" name="new_price" required>
                                </div>

                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input type="text" class="form-control" id="basicInput" value="{{$data->quantity}}" placeholder="enter quantity" name="quantity" required>
                                </div>

                                 <div class="form-group">
                                    <label>Image</label><br>
                                    <input type="file" name="image" id="customFile">
                                    <img src="{{asset('public/images/'.$data->image)}}" height="100px" width="100px" />
                                </div>

                                
                                <div class="form-group">
                                    <label>Status</label>
                                    <select class="form-select" id="basicSelect" name="status" required>
                                        <option value="1">Active</option>
                                        <option value="0">In-Active</option>
            
                                    </select>
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary round">Submit</button>
                                </div>
                            </div>
                        </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
       
        </div>
    </div>
</div>
</section>
</div>

@endsection
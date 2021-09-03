@php
    $p = Route::currentRouteName();
    $user = Auth::guard('admin')->user();
    $url = URL::current();
@endphp
@extends('layout.layout')
@section('content')
<div class="main-content container-fluid">
<section class="section">
<div class="row mb-4">
    <div class="col-md-12">
        <div class="container">
            <div class="row">
                                <!-- BEGIN INVOICE -->
                                <div class="col-xs-12">
                                    <div class="grid invoice">
                                        <div class="grid-body">
                                            <div class="invoice-title">
                                                
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <h2>invoice<br><br>
                                                        <span class="small">order #{{$data->id}}</span></h2>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <address>
                                                        <strong>Billed To:</strong><br>
                                                        {{$data->name}}<br>
                                                        {{$data->address}}<br>
                                                        <br>
                                                        <abbr title="Phone">Phone:</abbr> {{$data->phone}}
                                                    </address>
                                                </div>
                                            
                                            </div>
                                            <div class="row">
                                               
                                                <div class="col-xs-6 text-right">
                                                    <address>
                                                        <strong>Order Date:</strong><br>
                                                        {{$data->created_at}}
                                                    </address>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h3>ORDER SUMMARY</h3>
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr class="line">
                                                                <td><strong>#</strong></td>
                                                                <td class="text-center"><strong>Product</strong></td>
                                                                <td class="text-center"><strong>Qty</strong></td>
                                                                <td class="text-right"><strong>Unit Price</strong></td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach ($pro as $i)
                                                            <tr>
                                                                <td>{{$i->id}}</td>
                                                                <td><strong>{{$i->product_name}}</strong><br></td>
                                                                <td class="text-center">{{$i->quantity}}</td>
                                                                <td class="text-right">{{$i->price}}</td>
                                                            </tr>
                                                            @endforeach

                                                            <tr>
                                                                <td colspan="3">
                                                                </td><td class="text-right"><strong>Total</strong></td>
                                                                <td class="text-right"><strong>{{$i->total_price}}</strong></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>									
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- END INVOICE -->
                            </div>
            </div>
        </div>
       
        </div>
    </div>
</div>
</section>
</div>
<style>
body{margin-top:20px;
background:#eee;
}

.invoice {
    padding: 30px;
}

.invoice h2 {
	margin-top: 0px;
	line-height: 0.8em;
}

.invoice .small {
	font-weight: 300;
}

.invoice hr {
	margin-top: 10px;
	border-color: #ddd;
}

.invoice .table tr.line {
	border-bottom: 1px solid #ccc;
}

.invoice .table td {
	border: none;
}

.invoice .identity {
	margin-top: 10px;
	font-size: 1.1em;
	font-weight: 300;
}

.invoice .identity strong {
	font-weight: 600;
}


.grid {
    position: relative;
	width: 100%;
	background: #fff;
	color: #666666;
	border-radius: 2px;
	margin-bottom: 25px;
	box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.1);
}
    </style>
@endsection
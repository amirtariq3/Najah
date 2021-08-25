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
        <div class="card">
            
            <div class="card-body">
                <div class="row">
                    <div class="card-body">
                        <div class="row">
                            <h3>All Complaint</h3>
                            

                            <table class="table table-striped data-table">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Complaint</th>
                                        
                                        <th width="100px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $i)
                                        <tr>
                                            <td>{{ $i->id }}</td>
                                            <td>{{ $i->user->name}}</td>
                                            <td>{{ $i->complaint }}</td>
                                                
                                
                                            <td>
                                                <a onclick="return confirm('Are you sure?')" href="{{route('admin.product.delete', [$i->id])}}"><i data-feather="trash-2" width="20"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                    </div>
                       
                    </body>
                       
                    <script>
                        $(document).ready(function(){
                            $('.table').DataTable({
                                'info': true,
                                'ordering': true,
                                'searching': true,
                                'select': true,
                                
                            });
                        });
                    </script>
                        </html>
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
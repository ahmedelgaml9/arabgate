@extends('admin.dashboard')
@section('content')
<a class="btn-floating btn-large waves-effect waves-light red waves-light btn modal-trigger" href="{{ url('controll/blogcat/create')}}"><i class="material-icons">add</i></a>
<div class="card invoices-card">
    <div class="card-content">
        <div class="card-options">
            {!! Form::open(['method' => 'get', 'class' => 'searchForm']) !!}
            <input type="text" name="value" class="expand-search searchInput " placeholder="Search" autocomplete="off" >
            {!! Form::close() !!}
        </div>
        <span class="card-title">Project Categories</span>
        <table class="responsive-table bordered">
            <thead>
                <tr>
                    <th data-field="id">ID</th>
                    <th data-field="company">Category Name</th>
                     <th data-field="progress">Action</th>
                </tr>
            </thead>
            <tbody class="data">
                @include('admin.blogcat.loop')
            </tbody>
        </table>
        {!! $cats->render() !!}
    </div>
</div>
@endsection
@extends('admin.dashboard')
@section('content')
<div class="card invoices-card">
    <div class="card-content">
        <div class="card-options">
            {!! Form::open(['method' => 'get', 'class' => 'searchForm']) !!}
            <input type="text" name="value" class="expand-search searchInput " placeholder="Search" autocomplete="off" >
            {!! Form::close() !!}
        </div>
        <span class="card-title">Messages</span>
        <table class="responsive-table bordered">
            <thead>
                <tr>
                    <th data-field="id">#</th>
                    <th data-field="number">Name</th>
                    <th data-field="number">Email</th>
                    <th data-field="number">Sent On</th>
                    <th data-field="progress">Action</th>
                </tr>
            </thead>
            <tbody class="data">
                @include('admin.messages.loop')
            </tbody>
        </table>
        {!! $orders->render() !!}
    </div>
</div>
@endsection
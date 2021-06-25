@extends('admin.dashboard')
@section('content')
<div class="card invoices-card">

<a class="btn-floating btn-large waves-effect waves-light red waves-light btn modal-trigger" href="{{ url('controll/users/create') }}"><i class="material-icons">add</i></a>

    <div class="card-content">
        <div class="card-options">
            {!! Form::open(['method' => 'get', 'class' => 'searchForm']) !!}
            <input type="text" name="value" class="expand-search searchInput " placeholder="Search" autocomplete="off" >
            {!! Form::close() !!}

        </div>
        <span class="card-title">Users</span>
        <table class="responsive-table bordered">
            <thead>
                <tr>
                    <th data-field="id">ID</th>
                    <th data-field="number">User Name</th>
                    <th data-field="company">Email</th>
                    <th data-field="date">Status</th>
                    <th data-field="progress">Actions</th>
                </tr>
            </thead>
            <tbody class="data">
                @include('admin.users.loop')
            </tbody>
        </table>
        {!! $users->render() !!}
    </div>
</div>

@endsection
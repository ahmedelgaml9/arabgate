@extends('admin.dashboard')
@section('content')
<a class="btn-floating btn-large waves-effect waves-light red waves-light btn modal-trigger"  href="{{ url('controll/contacts/create') }}"><i class="material-icons">add</i></a>
<div class="card invoices-card">
    <div class="card-content">
        <div class="card-options">
            {!! Form::open(['method' => 'get', 'class' => 'searchForm']) !!}
            <input type="text" name="value" class="expand-search searchInput " placeholder="Search" autocomplete="off" >
            {!! Form::close() !!}
        </div>
        <span class="card-title">Contacts information</span>
        <table class="responsive-table bordered">
            <thead>
                <tr>
                    <th data-field="id">#</th>
                    <th data-field="company">name</th>
                    <th data-field="company">phone</th>
                    <th data-field="company">email</th>
                    <th data-field="progress">Actions</th>
                </tr>
            </thead>
            <tbody class="data">
                @include('admin.contacts.loop')
            </tbody>
        </table>
        {!! $rows->render() !!}
    </div>
</div>
@stop
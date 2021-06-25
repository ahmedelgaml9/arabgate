@extends('admin.dashboard')
@section('content')
<a class="btn-floating btn-large waves-effect waves-light red waves-light btn modal-trigger" href="#create"><i class="material-icons">add</i></a>
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
                @include('admin.cats.loop')
            </tbody>
        </table>
        {!! $rows->render() !!}
    </div>
</div>
<div id="create" class="modal">
    <div class="modal-content">
        {!! Form::open(array('route' =>'controll.cats.store','files'=>true,'class' => 'ajax-form-request')) !!}
        <div class="message" >
        </div><!-- div to display message after insert -->
        @include ('admin.cats.form',['submitButton' =>'Submit Data'])
        {!! Form::close() !!} 
    </div>
    <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Close</a>
    </div>
</div>
@endsection
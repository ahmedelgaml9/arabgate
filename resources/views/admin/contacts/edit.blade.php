@extends('admin.dashboard')
@section('content') 
<div class="row">
     {!! Form:: model($admin,array('method' => 'PATCH','action' => ['ContactsController@update',$admin->id], 'files'=>true,'class' => 'ajax-form-request')) !!}
    <div class="message" style="padding:26px; ">
    </div><!-- div to display message after insert -->
    @include ('admin.contacts.form',['submitButton' => "Update"])
    {!! Form::close() !!} 
</div>
@endsection
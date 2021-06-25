@extends('admin.dashboard')
@section('content') 
<div class="row">
     {!! Form:: model($admin,array('method' => 'PATCH','action' => ['TagsController@update',$admin->id], 'files'=>true,'class' => 'ajax-form-request')) !!}
    <div class="message" style="padding:26px; ">
    </div><!-- div to display message after insert -->
    @include ('admin.tags.form',['submitButton' => "Update"])
    {!! Form::close() !!} 
</div>
@endsection
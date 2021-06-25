@extends('admin.dashboard')
@section('content') 
<div class="row">

{!! Form::open(array('route' =>'customers.store','files'=>true,'class' => 'ajax-form-request')) !!}
<div class="message" style="padding:26px; ">
</div><!-- div to display message after insert -->
@include ('admin.customers.form',['submitButton' => "Create"])
{!! Form::close() !!}   
</div>
@endsection
@extends('admin.dashboard')
@section('content') 
<div class="row">
{!! Form::open(array('route' =>'controll.team.store','files'=>true,'class' => 'ajax-form-request')) !!}
<div class="message" style="padding:26px; ">
</div><!-- div to display message after insert -->
@include ('admin.teamwork.form',['submitButton' => 'Submit Data'])
{!! Form::close() !!}   
</div>
@endsection
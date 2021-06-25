@extends('admin.dashboard')
@section('content') 
<div class="row">
     {!! Form:: model($row,array('method' => 'PATCH','action' => ['CountriesinfoController@update',$row->id], 'files'=>true,'class' => 'update-ajax-form-request')) !!}
    <div class="message" style="padding:26px; ">
    </div><!-- div to display message after insert -->
    @include ('admin.countriesinfo.form',['submitButton' => "Update"])
    {!! Form::close() !!} 
</div>
@endsection
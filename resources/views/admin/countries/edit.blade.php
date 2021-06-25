@extends('admin.dashboard')
@section('content')
 
        {!! Form:: model($admin,array('method' => 'PATCH','action' => ['CountriesController@update',$admin->id], 'files'=>true,'class' => 'ajax-form-request')) !!}
        <div class="message" style="padding:26px; ">
        </div><!-- div to display message after insert -->
          @include ('admin.countries.form',['submitButton' =>'Submit Data'])
        {!! Form::close() !!} 
 
  
 @endsection
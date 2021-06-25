@extends('admin.dashboard')
@section('content')
 
        {!! Form:: model($row,array('method' => 'PATCH','action' => ['SiteinfoController@update',$row->id], 'files'=>true,'class' => 'ajax-form-request')) !!}
        <div class="message" style="padding:26px; ">
        </div><!-- div to display message after insert -->
          @include ('admin.siteinfo.form',['submitButton' =>'Submit Data'])
        {!! Form::close() !!} 

 @endsection
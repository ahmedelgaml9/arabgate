@extends('admin.dashboard')
@section('content') 
<div class="row">
     {!! Form:: model($row,array('method' => 'PATCH','action' => ['OfferController@update',$row->id], 'files'=>true,'class' => 'ajax-form-request')) !!}
    <div class="message" style="padding:26px; ">
    </div><!-- div to display message after insert -->
    @include ('admin.offers.form',['submitButton' => "Update"])
    {!! Form::close() !!} 
</div>
@endsection
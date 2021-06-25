<!-- START FORM   -->


<div class="input-field col s6">
    {!!Form::text('address', null,array('class'=>'validate','id'=>'title'))!!}
    <label for="title">Address</label>
    <label class="error">{{ $errors->first('title') }}</label>
</div>
  
<div class="input-field col s6">
    {!!Form::text('phone',null,array('class'=>'validate','id'=>'desc'))!!}
    <label for="desc">Phone </label>
    <label class="error">{{ $errors->first('desc') }}</label>
</div>
<div class="input-field col s6">
    {!!Form::email('email',null,array('class'=>'validate','id'=>'desc'))!!}
    <label for="desc">Email </label>
    <label class="error">{{ $errors->first('desc') }}</label>
</div>


<div class="panel-footer">                                                               
    {!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}
</div>

<!-- END FORM --> 


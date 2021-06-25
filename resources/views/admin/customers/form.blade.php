<!-- START FORM   -->

<div class="file-field  col s12">
    <div class="btn teal lighten-1">
        <span>Image</span>
        {!!Form::file('photo', null,array('id'=>'photo'))!!}
    </div>
    <div class="file-path-wrapper">
        <input class="file-path validate" type="text" placeholder="Image">
    </div>
    <label class="error">{{ $errors->first('photo') }}</label>
</div>

<div class="input-field col s6">
    {!!Form::text('title', null,array('class'=>'validate','id'=>'title'))!!}
    <label for="title">Title</label>
    <label class="error">{{ $errors->first('title') }}</label>
</div>
 
   
<div class="input-field col s6">
    {!!Form::text('desc', null,array('class'=>'validate','id'=>'desc'))!!}
    <label for="desc">Photo Description </label>
    <label class="error">{{ $errors->first('desc') }}</label>
</div>
  <div class="input-field col s6">
    {!!Form::select('status', array('1'=>'Active','0' =>'Disactive'),null,array('class'=>'validate'))!!}
    <label for="status">Status</label>

</div>

<div class="panel-footer">                                                               
    {!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}
</div>

<!-- END FORM --> 


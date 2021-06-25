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
    <label for="title">Alternative Text </label>
    <label class="error">{{ $errors->first('title') }}</label>
</div>
<div class="input-field col s6">
    {!!Form::text('photo_alt', null,array('class'=>'validate','id'=>'photo_alt'))!!}
    <label for="photo_alt">Alternative Text </label>
    <label class="error">{{ $errors->first('photo_alt') }}</label>
</div>
 <div class="input-field col s12">
    {!!Form::textarea('desc', null,array('class'=>'materialize-textarea','id'=>'desc'))!!}
    <label for="desc">Photo Description </label>
    <label class="error">{{ $errors->first('desc') }}</label>
</div>
<div class="panel-footer">                                                               
    {!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}
</div>

<!-- END FORM --> 


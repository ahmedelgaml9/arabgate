<div class="file-field col s12">
    <div class="btn teal lighten-1">
        <span>File</span>
        {!!Form::file('photo', null,array('id'=>'image'))!!}
    </div>
    <div class="file-path-wrapper">
        <input class="file-path validate" type="text" placeholder="Member Image">
        <label class="error">{{ $errors->first('photo') }}</label>
    </div>
</div>
 <div class="input-field col s6">
    {!!Form::text('name', null,array('class'=>'validate','id'=>'name'))!!}
    <label for="name">Member Name</label>
</div>
 <div class="input-field col s6">
    {!!Form::text('position', null,array('class'=>'validate','id'=>'position'))!!}
    <label for="title">Member Position</label>
    <label class="error">{{ $errors->first('position') }}</label>
</div>
<div class="input-field col s12">
    {!!Form::url('fb', null,array('class'=>'validate','id'=>'fb'))!!}
    <label for="fb">Facebook </label>
    <label class="error">{{ $errors->first('fb') }}</label>
</div>
<div class="input-field col s12">
    {!!Form::url('in', null,array('class'=>'validate','id'=>'in'))!!}
    <label for="in">Linked in </label>
    <label class="error">{{ $errors->first('in') }}</label>
</div>
<div class="input-field col s12">
    {!!Form::url('tw', null,array('class'=>'validate','id'=>'tw'))!!}
    <label for="tw">Twitter </label>
    <label class="error">{{ $errors->first('tw') }}</label>
</div>
<div class="input-field col s12">
    {!!Form::url('be', null,array('class'=>'validate','id'=>'be'))!!}
    <label for="be">Behance</label>
    <label class="error">{{ $errors->first('be') }}</label>
</div>
 


{!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}

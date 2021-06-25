<div class="row">
    <div class="input-field col s6">
        {!!Form::text('title', null,array('class'=>'validate','id'=>'title'))!!}
        <label for="name">Process Name</label>
    </div>

    <div class="input-field col s6">
        {!!Form::text('title_ar', null,array('class'=>'validate','id'=>'title'))!!}
        <label for="name">Process Name</label>
    </div>
   
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


    <div class="input-field col s12">
        {!!Form::text('desc', null,array('class'=>'validate','id'=>'desc'))!!}
        <label for="name">Process Description</label>
    </div>
    
    <div class="input-field col s12">
        {!!Form::text('desc_ar', null,array('class'=>'validate','id'=>'desc'))!!}
        <label for="name">Process Description</label>
    </div>
</div>

{!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}

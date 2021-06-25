<div class="loading-sub" style="display: none;">
    <div class="progress">
        <div class="indeterminate"></div>
    </div>
</div>
<div class="row">
    <div class="input-field col s6">
        {!!Form::text('name', null,array('class'=>'validate','id'=>'name'))!!}
        <label for="name">Category Name</label>
    </div>
    <div class="input-field col s6">
        {!!Form::text('custom_url', null,array('class'=>'validate','id'=>'custom_url'))!!}
        <label for="name">custom Url</label>
    </div>
    <div class="input-field col s6">
        {!!Form::text('title', null,array('class'=>'validate','id'=>'title'))!!}
        <label for="name">Page Tilte</label>
    </div>
    <div class="input-field col s6">
        {!!Form::text('meta_title', null,array('class'=>'validate','id'=>'meta_title'))!!}
        <label for="name">Meta Tilte</label>
    </div>
  
    <div class="input-field col s12">
        {!!Form::textarea('meta_description', null,array('class'=>'materialize-textarea','id'=>'meta_description'))!!}
        <label for="desc">Meta Description </label>
        <label class="error">{{ $errors->first('meta_description') }}</label>
    </div>
    <div class="input-field col s12">
        {!!Form::textarea('meta_keyword', null,array('class'=>'materialize-textarea','id'=>'meta_keyword'))!!}
        <label for="desc">Keywords </label>
        <label class="error">{{ $errors->first('meta_keyword') }}</label>
    </div>
</div>

{!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}

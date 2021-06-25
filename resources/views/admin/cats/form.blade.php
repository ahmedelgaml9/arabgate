<div class="row">
<div class="input-field col s12">
    {!!Form::text('name', null,array('class'=>'validate','id'=>'name'))!!}
    <label for="name">Category Name</label>
</div>

 </div>
  
{!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}

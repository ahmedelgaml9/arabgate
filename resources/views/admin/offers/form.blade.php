 <div class="input-field col s6">
    {!!Form::text('title', null,array('class'=>'validate','id'=>'title'))!!}
    <label for="title">Title</label>
    <label class="error">{{ $errors->first('title') }}</label>
</div>
<div class="input-field col s6">
    {!!Form::text('price', null,array('class'=>'validate','id'=>'price'))!!}
    <label for="title">Price</label>
    <label class="error">{{ $errors->first('price') }}</label>
</div>
<div class="input-field col s6">
    {!!Form::text('subtitle', null,array('class'=>'validate','id'=>'subtitle'))!!}
    <label for="title">SubTitle</label>
    <label class="error">{{ $errors->first('subtitle') }}</label>
</div>
 
 <div class="input-field col s6">
    {!!Form::text('button', null,array('class'=>'button','id'=>'button'))!!}
    <label >Button Text</label>
    <label class="error">{{ $errors->first('button') }}</label>
</div>
<div class="input-field col s12">
    {!!Form::select('color', array('red'=>'Red','blue'=>'Blue','green'=>'Green','violet' =>'Violet'),null,array('class'=>'Materialize Select'))!!}
    <label for="color"> Table Color</label>
 </div>
</div>
 <div class="card">
    <div class="card-content">
        <span class="card-title">Offer Properities</span>
        <div class="row">
             <div style="color: red" id='errorhhcol'></div>
             <div class="input-field col s6">
                {!!Form::text('name', null,array('class'=>'validate','id'=>'name'))!!}
                <label for="quantity"> Properity  </label>
                <label class="error">{{ $errors->first('name') }}</label>
                            <a class="btn-floating btn-large waves-effect waves-light red" onclick="Append()"><i class="material-icons">add</i></a>

             </div>
             <div class="col s6" style="min-height: 77px;">
                              <table  id='doncol'></table>

             </div>
             <input type="hidden" id="names"  name='names' value='{{ Request::old('names') }}' />
         </div>
    </div>
 </div>
<div class="panel-footer">                                                               
    {!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}
</div>

<!-- END FORM --> 


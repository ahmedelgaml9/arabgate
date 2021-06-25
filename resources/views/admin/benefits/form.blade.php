<div class="card">
    <div class="card-content">
        <span class="card-title"> </span>
        <div class="row">
            <div class="file-field  col s12">
                <div class="btn teal lighten-1">
                    <span>Image</span>
                    {!!Form::file('photo', null,array('id'=>'photo'))!!}
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" placeholder="Image">
                </div>
                <label class="error " >{{ $errors->first('photo') }}</label>
            </div>
           
            <div class="input-field col s6">
                {!!Form::text('name', null,array('class'=>'validate','id'=>'name'))!!}
                <label for="name">Project Name</label>
                <label class="error">{{ $errors->first('name') }}</label>
            </div>
            
            
            <div class="input-field col s6">
                
               <select name="product_id">
                   
                   @foreach($projects  as $project)
                  <option value="{{$project->id}}">{{$project->name}}</option>
                   
                   @endforeach
               </select>
               
            </div>
            
            <div class="input-field col s12">
                {!!Form::text('desc', null,array('class'=>'validate','id'=>'desc'))!!}
                <label for="desc">Description </label>
                <label class="error">{{ $errors->first('desc') }}</label>
            </div>
            
        </div>

    </div>
</div>
<div class="panel-footer">                                                               
    {!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}
</div>

<!-- END FORM --> 
<script>
    CKEDITOR.replace('content', {
        customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
    });
 </script>

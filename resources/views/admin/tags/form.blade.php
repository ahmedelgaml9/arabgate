

<div class="input-field col s6">
    {!!Form::text('tag', null,array('class'=>'validate','id'=>'title'))!!}
    <label for="title">tag</label>
    <label class="error">{{ $errors->first('title') }}</label>
</div>
  <div class="input-field col s6">
                <select name="blog_id">
                    @foreach($blogs as $blog)
                    <option value="{{$blog->id}}">{{$blog->title}}</option>
                    @endforeach
                </select>
            </div>
<div class="panel-footer">                                                               
    {!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}
</div>

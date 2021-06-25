<div class="card">
    <div class="card-content">
        <span class="card-title"> </span>
        <div class="row">
            <div class="input-field col s6">
                {!!Form::text('title',null,array('class'=>'validate','id'=>'name'))!!}
                <label for="title"> Name</label>
                <label class="error">{{ $errors->first('title') }}</label>
            </div>
            <div class="input-field col s6">
                {!!Form::text('title_ar', null,array('class'=>'validate','id'=>'name'))!!}
                <label for="name"> Name arabic</label>
            </div>
            <div class="input-field col s6">
                <select name="country_id">
                    @foreach($countries as $country)
                    <option value="{{$country->id}}">{{$country->name}}</option>

                    @endforeach
                </select>
            </div>

              <div class="input-field col s6">
                {!!Form::url('link',null,array('class'=>'validate','id'=>'name'))!!}
                <label for="name"> Link</label>
             </div>
        </div>
    </div>

</div>

{!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}

<script>
</script>
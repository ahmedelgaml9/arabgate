<div class="card">
    <div class="card-content">
        <span class="card-title"> </span>

        <div class="row">
            <div class="input-field col s6">
                {!!Form::text('name', null,array('class'=>'validate','id'=>'name'))!!}
                <label for="name"> Name</label>
            </div>

            <div class="input-field col s6">
                {!!Form::text('name_ar', null,array('class'=>'validate','id'=>'name'))!!}
                <label for="name"> Name arabic</label>
            </div>


            <div class="file-field  col s12">
                <div class="btn teal lighten-1">
                    <span>Image</span>
                    {!!Form::file('photo', null,array('id'=>'photo'))!!}
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" placeholder="Image">
                </div>
                <label class="error ">{{ $errors->first('photo') }}</label>
            </div>




            <div class="input-field col s12">
                {!!Form::text('custom_url', null,array('class'=>'validate','id'=>'custom_url'))!!}
                <label for="name">Custom_url</label>
            </div>



            <div class="input-field col s12">
                {!!Form::text('custom_url_ar', null,array('class'=>'validate','id'=>'custom_url_ar'))!!}
                <label for="name">Custom_url arabic</label>
            </div>

            <div class="input-field col s12">
                {!!Form::text('lat', null,array('class'=>'validate','id'=>'lat'))!!}
                <label for="name">Lat</label>
            </div>


            <div class="input-field col s12">
                {!!Form::text('lang', null,array('class'=>'validate','id'=>'lang'))!!}
                <label for="name">lang</label>
            </div>

            <div class="input-field col s12">
                {!!Form::text('desc', null,array('class'=>'validate','id'=>'desc'))!!}
                <label for="name"> Description</label>
            </div>


            <div class="input-field col s12">
                {!!Form::text('desc_ar', null,array('class'=>'validate','id'=>'desc_ar'))!!}
                <label for="name"> Description arabic</label>
            </div>

        </div>
    </div>

</div>

{!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}



<script>
</script>
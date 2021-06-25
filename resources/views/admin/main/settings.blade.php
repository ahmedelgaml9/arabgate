@extends('admin.dashboard')
@section('content')

@inject('x', App\Main')

<?php

$main = $x::find(1);

?>

<!-- end START BREADCRUMB -->
{!! Form:: model($main,array('method' => 'PUT','action' => ['MainController@update'], 'files'=>true,'class' =>
'ajax-form-request')) !!}
<div class="message">
</div><!-- div to display message after insert -->

<div class="card card-transparent">
    <div class="card-content">
        <span class="card-title">Main Settings</span>
    </div>
</div>
<div class="row">
    <div class="col s12 16">
        <ul class="tabs tab-demo z-depth-1" style="width: 100%;">
            <li class="tab col s3"><a href="#test1" class="active">About Us</a></li>
            <li class="tab col s3"><a class="" href="#test2">Social & Contact Info</a></li>
            <li class="tab col s3"><a class="" href="#test3">Slider Photos</a></li>

        </ul>
    </div>
    <div id="test1" class="col s12">
                   
        <div class="file-field col s6">
            <div class="btn teal lighten-1">
                <span>Logo</span>
                {!!Form::file('logo', null,array('id'=>'photo'))!!}
            </div>
            <div class="file-path-wrapper">
                <input class="file-path validate" type="text" placeholder="Logo">
            </div>
            <label class="error">{{ $errors->first('logo') }}</label>
        </div>
        <div class="input-field col s6">
            {!!Form::text('photo_alt', null,array('class'=>'validate','id'=>'photo_alt'))!!}
            <label for="photo_alt">Alt of logo </label>
            <label class="error">{{ $errors->first('photo_alt') }}</label>
        </div>
        <div class="input-field col s6">
            {!!Form::text('phone', null,array('class'=>'validate','id'=>'phone'))!!}
            <label for="phone">Phone</label>
            <label class="error">{{ $errors->first('phone') }}</label>
        </div>


        <div class="input-field col s6">
            {!!Form::text('mobile', null,array('class'=>'validate','id'=>'mobile'))!!}
            <label for="phone">Mobile Number</label>
            <label class="error">{{ $errors->first('mobile') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::text('phone2', null,array('class'=>'validate','id'=>'phone2'))!!}
            <label for="phone2">Saudi Phone</label>
            <label class="error">{{ $errors->first('phone2') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::text('mobile2', null,array('class'=>'validate','id'=>'mobile2'))!!}
            <label for="phone2">Saudi Mobile Number</label>
            <label class="error">{{ $errors->first('mobile2') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::text('address', null,array('class'=>'validate','id'=>'address'))!!}
            <label for="address">Address</label>
            <label class="error">{{ $errors->first('address') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::text('address_ar', null,array('class'=>'validate','id'=>'address'))!!}
            <label for="address">Address arabic</label>
            <label class="error">{{ $errors->first('address') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::text('aboutus', null,array('class'=>'validate','id'=>'address'))!!}
            <label for="address">aboutus</label>
            <label class="error">{{ $errors->first('address') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::text('aboutus_ar', null,array('class'=>'validate','id'=>'address'))!!}
            <label for="address">aboutus arabic</label>
            <label class="error">{{ $errors->first('address') }}</label>
        </div>

        <div class="input-field col s12">

            {!!Form::textarea('vision',null,array('class'=>'validate','id'=>'vision'))!!}
            <label for="textarea1">Vision</label>
        </div>

        <div class="input-field col s12">
            {!!Form::textarea('vision_ar', null,array('class'=>'validate','id'=>'vision_ar'))!!}
            <label for="t">Vision arabic</label>
        </div>

        <div class="input-field col s12">
            <label for="textarea1">Mission</label>
            {!!Form::textarea('mission',null,array('class'=>'validate','id'=>'mission'))!!}
            <label for="textarea1">Mission</label>
        </div>

        <div class="input-field col s12">
            {!!Form::textarea('mission_ar', null,array('class'=>'validate','id'=>'mission_ar'))!!}
            <label for="t">Mission arabic</label>
        </div>

        <div class="input-field col s6">
            {!!Form::text('address2', null,array('class'=>'validate','id'=>'address2'))!!}
            <label for="address2">Saudi Address</label>
            <label class="error">{{ $errors->first('address2') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::text('address2_ar', null,array('class'=>'validate','id'=>'address2'))!!}
            <label for="address2">Saudi Address arabic</label>
            <label class="error">{{ $errors->first('address2') }}</label>
        </div>
    </div>
    <div id="test2" class="col s12">
        <div class="input-field col s12">
            {!!Form::url('fb', null,array('class'=>'validate','id'=>'fb'))!!}
            <label for="fb">Facebook</label>
            <label class="error">{{ $errors->first('fb') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::url('tw', null,array('class'=>'validate','id'=>'tw'))!!}
            <label for="fb">Twitter</label>
            <label class="error">{{ $errors->first('tw') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::url('be', null,array('class'=>'validate','id'=>'be'))!!}
            <label for="ins">Behance</label>
            <label class="error">{{ $errors->first('be') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::url('yt', null,array('class'=>'validate','id'=>'yt'))!!}
            <label for="fb">Youtbe</label>
            <label class="error">{{ $errors->first('yt') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::url('linkedin', null,array('class'=>'validate','id'=>'linkedin'))!!}
            <label for="fb">Linked In</label>
            <label class="error">{{ $errors->first('linkedin') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::url('gp', null,array('class'=>'validate','id'=>'gp'))!!}
            <label for="fb">Google +</label>
            <label class="error">{{ $errors->first('gp') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::url('pin', null,array('class'=>'validate','id'=>'pin'))!!}
            <label for="fb">Pin</label>
            <label class="error">{{ $errors->first('pin') }}</label>
        </div>

        <div class="input-field col s6">
            {!!Form::url('ins', null,array('class'=>'validate','id'=>'ins'))!!}
            <label for="ins">Instgarm</label>
            <label class="error">{{ $errors->first('ins') }}</label>
        </div>
    </div>

    <div id="test3" class="col s12">
        <div class="file-field input-field s6">


            <div class="file-field input-field s6">
                <div class="btn teal lighten-1">
                    <span>About Us Slider</span>
                    {!!Form::file('aboutusphoto', null,array('id'=>'aboutusphoto'))!!}
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" placeholder="About Us Slider">
                </div>
                <label class="error">{{ $errors->first('aboutusphoto') }}</label>
            </div>
            <div class="file-field input-field s6">
                <div class="btn teal lighten-1">
                    <span>Contact us Slider</span>
                    {!!Form::file('contactusphoto', null,array('id'=>'contactusphoto'))!!}
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" >
                </div>
                <label class="error">{{ $errors->first('contactusphoto') }}</label>
            </div>

            <div class="file-field input-field s6">
                <div class="btn teal lighten-1">
                    <span>Country Slider</span>
                    {!!Form::file('countryphoto', null,array('id'=>'countryphoto'))!!}
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text">
                </div>
                <label class="error">{{ $errors->first('countryphoto') }}</label>
            </div>

            <div class="file-field input-field s6">
                <div class="btn teal lighten-1">
                    <span>Country detail slider</span>
                    {!!Form::file('countrydetailphoto', null,array('id'=>'photo'))!!}
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" placeholder="About Us Slider">
                </div>
                <label class="error">{{ $errors->first('articlesslider') }}</label>
            </div>


            <div class="file-field input-field s6">
                <div class="btn teal lighten-1">
                    <span>Blog Slider</span>
                    {!!Form::file('blogphoto',null,array('id'=>'photo'))!!}
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" placeholder="About Us Slider">
                </div>
                <label class="error">{{ $errors->first('eventsslider') }}</label>
            </div>


            <div class="file-field input-field s6">
                <div class="btn teal lighten-1">
                    <span> Blog detail Slider</span>
                    {!!Form::file('blogdetailphoto',null,array('id'=>'photo'))!!}
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" placeholder="About Us Slider">
                </div>
                <label class="error">{{ $errors->first('clientsslider') }}</label>
            </div>
        </div>
        <div class="panel-footer">
            {!! Form::submit('edit', array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}
        </div>
        {!! Form::close() !!}

        <script>
            CKEDITOR.replace('vision_ar', {
                customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
            });
            CKEDITOR.replace('vision', {
                customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
            });
            CKEDITOR.replace('mission', {
                customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
            });
            CKEDITOR.replace('mission_ar', {
                customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
            });
        </script>



        <!-- END BREADCRUMB -->
        @stop
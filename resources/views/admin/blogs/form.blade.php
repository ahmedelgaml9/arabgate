<div class="row">
    <div class="loading-sub" style="display: none;">
        <div class="progress">
            <div class="indeterminate"></div>
        </div>
    </div>
    <div class="card">
        <div class="card-content">
            <span class="card-title">Blog Info</span>
            <div class="row">
                <div class="file-field col s6">
                    <div class="btn teal lighten-1">
                        <span>Main Photo</span>
                        {!!Form::file('photo', null,array('id'=>'image'))!!}
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" placeholder="Article Image">
                        <label class="error">{{ $errors->first('photo') }}</label>
                    </div>
                </div>
                <div class="file-field col s6">
                    <div class="btn teal lighten-1">
                        <span>Blog Photoes</span>
                        <input type="file" name="gallary[]" multiple>
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" placeholder="Images">
                        <label class="error">{{ $errors->first('photo') }}</label>
                    </div>
                </div>
                <div class="input-field col s12">
                    {!!Form::text('title', null,array('class'=>'validate','id'=>'title'))!!}
                    <label for="title">Blog Title</label>
                </div>
              
                  <div class="input-field col s12">
                    {!!Form::text('title_ar', null,array('class'=>'validate','id'=>'title'))!!}
                    <label for="title">Blog Title arabic</label>
                </div>
                
                
            <div class="input-field col s6">
                {!!Form::select('status', array('1'=>'Active','0' =>'Disactive'),null,array('class'=>'validate'))!!}
                <label for="status">Status</label>
            
            </div>
            
                <div class="input-field col s6">
                    {!!Form::select('cat_id', $cats,null,array('class'=>'validate','id'=>'cat_id'))!!}
                </div>
                <div class="input-field col s12">
                    <label for="blog">Blog Description</label>
                    {!!Form::textarea('desc', null,array('class'=>'materialize-textarea','id'=>'desc'))!!}
                    <label class="error">{{ $errors->first('desc') }}</label>
                </div>
                 <div class="input-field col s12">
                    <label for="blog">Blog Description arabic</label>
                    {!!Form::textarea('desc_ar', null,array('class'=>'materialize-textarea','id'=>'desc'))!!}
                    <label class="error">{{ $errors->first('desc') }}</label>
                    </div>
                    
                <div class="col s12">
                    <label for="blog">Blog</label>
                    {!!Form::textarea('blog', null,array('class'=>'validate','id'=>'blog','placeholder'=>'Product Description','style'=>'padding-top:20px'))!!}
                    <label class="error">{{ $errors->first('blog') }}</label>
                </div>
       
                 <div class="col s12">
                    <label for="blog">Blog arabic</label>
                    {!!Form::textarea('blog_ar', null,array('class'=>'validate','id'=>'blog_ar','placeholder'=>'Product Description','style'=>'padding-top:20px'))!!}
                    <label class="error">{{ $errors->first('blog') }}</label>
                </div>

              <div class="input-field col s12">
                    {!!Form::text('tags', null,array('class'=>'validate','id'=>'title'))!!}
                    <label for="title">Tags</label>
                </div>
                
               

            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-content">
            <span class="card-title">Blog Meta</span>
            <div class="row">
                <div class="input-field col s6">
                    {!!Form::text('custom_url', null,array('class'=>'validate','id'=>'custom_url'))!!}
                    <label for="custom_url">Custom Url</label>
                </div>

            <div class="input-field col s6">
                    {!!Form::text('custom_url_ar', null,array('class'=>'validate','id'=>'custom_url'))!!}
                    <label for="custom_url">Custom Url arabic</label>
                </div>


                <div class="input-field col s6">
                    {!!Form::text('page_title', null,array('class'=>'validate','id'=>'page_title'))!!}
                    <label for="page_title">Page Title</label>
                </div>
                
                   <div class="input-field col s6">
                    {!!Form::text('page_title_ar', null,array('class'=>'validate','id'=>'page_title'))!!}
                    <label for="page_title">Page Title arabic</label>
                </div>
                
                
                <div class="input-field col s6">
                    {!!Form::text('photo_alt', null,array('class'=>'validate','id'=>'photo_alt'))!!}
                    <label for="photo_alt">Photo alt</label>
                </div>

                <div class="input-field col s6">
                    {!!Form::text('meta_title', null,array('class'=>'validate','id'=>'meta_title'))!!}
                    <label for="meta_title">Page Meta Title arabic</label>
                </div>
  
               <div class="input-field col s6">
                    {!!Form::text('meta_title_ar', null,array('class'=>'validate','id'=>'meta_title'))!!}
                    <label for="meta_title">Page Meta Title arabic</label>
                  </div>
                
                <div class="input-field col s12">
                    {!!Form::textarea('meta_description', null,array('class'=>'materialize-textarea','id'=>'meta_description'))!!}
                    <label for="meta_description">Product meta description</label>
                </div>

                 <div class="input-field col s12">
                    {!!Form::textarea('meta_description_ar', null,array('class'=>'materialize-textarea','id'=>'meta_description_ar'))!!}
                    <label for="meta_description">Product meta description arabic</label>
                 </div>

       
                <div class="input-field col s6">
                    {!!Form::text('meta_keyword', null,array('class'=>'materialize-textarea','id'=>'meta_keyword'))!!}
                    <label for="meta_keyword">Product meta keyword</label>
                </div>
             <div class="input-field col s6">
                    {!!Form::text('meta_keyword_ar', null,array('class'=>'materialize-textarea','id'=>'meta_keyword'))!!}
                    <label for="meta_keyword">Product meta keyword arabic</label>
                </div>

            </div>
        </div>
    </div>
    <div class="loading-sub" style="display: none;">
        <div class="progress">
            <div class="indeterminate"></div>
        </div>
    </div>
</div>

{!! Form::submit($submitButton, array('class'=>'btn btn-primary text-center','id' => 'submit')) !!}
<script>
    CKEDITOR.replace('blog', {
        customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
    });
    CKEDITOR.replace('blog_ar', {
        customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
    });
    
    CKEDITOR.replace('meta_description',{
        customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
    });
    CKEDITOR.replace('meta_description_ar', {
        customConfig: '{{ asset("admin-assets/ckeditor/config.js") }}'
    });
    
</script>
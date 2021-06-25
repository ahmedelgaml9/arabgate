<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model {

    /**
     * The dataFbase table used by the model.
     *
     * @var string
     */
    protected $table = 'blog';
    protected $fillable = array('page_title','title','custom_url','meta_title','photo','photo_alt','desc','blog', 'status',
         'meta_keyword','meta_description','cat_id','page_title_ar','title_ar','custom_url_ar','meta_title_ar','desc_ar','blog_ar'
         ,'meta_keyword_ar','meta_description_ar');

    public function cat() {
        return $this->belongsTo('App\BlogCat', 'cat_id');
    }
       public function photoes() {
        return $this->hasMany('App\BlogGalary', 'blog_id');
    }

    public function tags() {
        return $this->hasMany('App\tags', 'blog_id');
    }

    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/blogs/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }
    }

}

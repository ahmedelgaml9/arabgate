<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Project extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'projects';
    protected $fillable = array('photo', 'photo_alt', 'name','desc','link','cat_id','portfolio','projects','custom_url','meta_description','meta_title','title','meta_keyword','content','vedio','solution','ourwork');
    public $timestamps=false;
    /**
     * [setImageAttribute]
     * @return [uplode and create or update one image to service] [to user]
     */
    public function cat() {
        return $this->belongsTo('App\Cat','cat_id');
    }
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/projects/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }
    }

}

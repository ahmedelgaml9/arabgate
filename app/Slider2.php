<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider2 extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'slider2';
    protected $fillable = array('photo', 'photo_alt', 'title','desc','status','color');
    public $timestamps=false;
    /**
     * [setImageAttribute]
     * @return [uplode and create or update one image to service] [to user]
     */
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/slider/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }
    }

}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aboutus extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'aboutus';
    protected $fillable = array('icon', 'title','desc','title_ar','desc_ar','link');
    public $timestamps=false;
   
  public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/countries/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }


    }

}

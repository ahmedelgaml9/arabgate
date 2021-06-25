<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Siteinfo extends Model
{


    protected $table = 'site_information';
    protected $fillable = array('desc','desc_ar', 'title','title_ar','photo');
    public $timestamps=false;
    /**
     * [setImageAttribute]
     * @return [uplode and create or update one image to service] [to user]
     */
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/countries/';

            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }

    }

}

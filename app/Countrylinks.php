<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Countrylinks extends Model
{
    protected $table = 'countries_links';
    protected $fillable = array('link', 'title','title_ar','country_id');
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

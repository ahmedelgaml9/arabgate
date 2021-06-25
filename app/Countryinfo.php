<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Countryinfo extends Model
{
    

    protected $table = 'countries_info';
    protected $fillable = array('photo', 'title','title_ar','desc','desc_ar','status','country_id');
    public $timestamps=false;
    /**
     * [setImageAttribute]
     * @return [uplode and create or update one image to service] [to user]
     */
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/countriesinfo/';

            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }
    }



}

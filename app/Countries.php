<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Countries extends Model
{
    
    protected $table = 'countries';
    protected $fillable = array('photo','name','name_ar','desc','desc_ar','custom_url','lat','lang','custom_url_ar');
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

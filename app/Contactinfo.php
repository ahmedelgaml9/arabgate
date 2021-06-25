<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contactinfo extends Model
{
    protected $table = 'contact_information';
    protected $fillable = array( 'address','phone','email');
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

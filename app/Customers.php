<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customers extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'customers';
    protected $fillable = array('photo','title','desc','status');
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

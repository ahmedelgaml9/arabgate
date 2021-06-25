<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Career extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'career';
    protected $fillable = array('name', 'phone', 'email', 'address','cv','message');
 
    /**
     * [setImageAttribute]
     * @return [uplode and create or update one image to service] [to user]
     */
    public function setCvAttribute($photo) {
        if ($photo) {
            $dest = 'adminstyle/assets/images/cvs/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['cv'] = $name;
        }
    }

}

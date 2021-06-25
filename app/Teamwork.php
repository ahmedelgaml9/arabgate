<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teamwork extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'teamwork';
    protected $fillable = array('name', 'position','photo','photo_alt','fb','in','be','tw');
    public $timestamps=false;
    
     public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/team/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }
    }
   

}

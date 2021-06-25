<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
  class Photo extends Model 
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'photoes';
    protected $fillable = array('photo','photo_Alt','desc','title');
        public $timestamps = false;

    /**
     * [setImageAttribute]
     * @return [uplode and create or update one image to service] [to user]
     */
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/photo/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }
    }

 }

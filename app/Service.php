<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'services';
    protected $fillable = array('name','desc','image','servicepormotion','title1','title2','desc2','desc3');
    public $timestamps = false;
 
 
  public function cat() {
        return $this->belongsTo('App\Cat','cat_id');
    }
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/services/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['image'] = $name;
        }
    }
 
 
 
}

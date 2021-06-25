<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TopServices extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'topservices';
    protected $fillable = array('name','desc','photo','link');
    public $timestamps = false;
 
 
  public function cat() {
        return $this->belongsTo('App\Cat','cat_id');
    }
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/services/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }
    }
 
 
 
}

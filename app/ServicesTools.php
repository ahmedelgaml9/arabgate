<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServicesTools extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'services_tools';
    protected $fillable = array('name','desc','percent','service_id','photo');
    public $timestamps=false;
     
       
    public function services() {
        return $this->belongsTo('App\Service','service_id');
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

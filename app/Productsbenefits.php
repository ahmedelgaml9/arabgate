<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Productsbenefits extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'projects_benefits';
    
    protected $fillable = array('photo','name','desc','product_id');
    
    public $timestamps=false;
    /**
     * [setImageAttribute]
     * @return [uplode and create or update one image to service] [to user]
     */
    public function products() {
        return $this->belongsTo('App\Project','product_id');
    }
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/projects/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }
    }

}

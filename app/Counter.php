<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Counter extends Model
{

    protected $table ='counters';
    protected $fillable = array( 'title','title_ar','number','photo');
    public $timestamps=false;
    
    public function setPhotoAttribute($photo) {
        if ($photo) {
            $dest = 'admin-assets/images/countries/';
            $name = str_random(6) . '_' . $photo->getClientOriginalName();
            $photo->move($dest, $name);
            $this->attributes['photo'] = $name;
        }


    }






}

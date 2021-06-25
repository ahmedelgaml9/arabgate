<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'offer';
    protected $fillable = array('title', 'subtitle','price','color','button');
    public $timestamps=false;
    public function dets() {
        return $this->hasMany('App\Offer_det','offer_id');
    }
   

}

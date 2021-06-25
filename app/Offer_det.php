<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offer_det extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'offer_det';
    protected $fillable = array('name', 'offer_id');
    public $timestamps=false;
   

}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'skills';
    protected $fillable = array('name', 'number','color');
    public $timestamps=false;
   

}

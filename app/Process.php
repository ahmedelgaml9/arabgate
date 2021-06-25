<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Process extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'process';
    protected $fillable = array('icon', 'title','desc');
    public $timestamps=false;
   

}

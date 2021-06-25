<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subscribe extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'subscribe';
    protected $fillable = array('email');
  
}

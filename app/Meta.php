<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Meta extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'meta';
    public $timestamps = false;
    protected $fillable = array('title','meta_description','meta_keyword','meta_auther');

 
     

}

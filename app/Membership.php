<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Membership extends Model
{
    protected $table  = 'membership';
    protected $fillable = array( 'name','phone','email');
    public $timestamps=false;

}

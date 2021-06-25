<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Support extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'support';
    protected $fillable = array('name', 'phone', 'company', 'address', 'message','contactinfo');

}

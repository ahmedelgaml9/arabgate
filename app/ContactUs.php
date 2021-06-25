<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactUs extends Model {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'contactus';
    protected $fillable = array('name', 'email', 'subject', 'message','seen');

}

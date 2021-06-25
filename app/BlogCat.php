<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogCat extends Model {

    /**
     * The dataFbase table used by the model.
     *
     * @var string
     */
    protected $table = 'blogcats';
    protected $fillable = array('name', 'title', 'custom_url', 'meta_title',
        'meta_keyword', 'meta_description');

    public function blogs() {
        return $this->hasMany('App\Blog', 'cat_id');
    }

}

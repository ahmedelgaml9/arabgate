<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{
    protected $table ='tags';
    protected $fillable = array('tag','blog_id');
    public $timestamps=false;

    public function blogs()
    {
        return $this->belongsToMany('App\Blog','vblogtags','tag_id','blog_id');
    }


}

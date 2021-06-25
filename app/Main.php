<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Main extends Model
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'main';
    public $timestamps = false;
    protected $fillable = array('logo','photo_alt','phone','mobile','fb','tw','be','yt','gp','pin','address','address2','mobile2','phone2','aboutus','vision','vision_ar'
    ,'address_ar','address2_ar','aboutus_ar','mission','mission_ar','aboutusphoto','contactusphoto','countryphoto','countrydetailphoto','blogphoto','blogdetailphoto');

//    protected $hidden = array('password', 'remember_token');

    /**
     * [setImageAttribute]
     * @return [uplode and create or update one image to service] [to user]
     */
    public function setLogoAttribute($image)
    {
        if ($image) {
            $dest = 'admin-assets/images/photo/';
            $name = str_random(6) . '_' . $image->getClientOriginalName();
            $image->move($dest, $name);
            $this->attributes['logo'] = $name;
        }
    }


    public function setAboutusphotoAttribute($image)
    {
        if ($image) {
            $dest = 'admin-assets/images/photo/';
            $name = str_random(6) . '_' . $image->getClientOriginalName();
            $image->move($dest, $name);
            $this->attributes['aboutusphoto'] = $name;
        }
    }


    public function setBlogdetailphotoAttribute($image)
    {
        if ($image) {
            $dest = 'admin-assets/images/photo/';
            $name = str_random(6) . '_' . $image->getClientOriginalName();
            $image->move($dest, $name);
        }
        $this->attributes['blogdetailphoto'] = $name;
    }
    

    public function setBlogphotoAttribute($image)
    {
        if ($image) {
            $dest = 'admin-assets/images/photo/';
            $name = str_random(6) . '_' . $image->getClientOriginalName();
            $image->move($dest, $name);
            $this->attributes['blogphoto'] = $name;
        }
    }

    public function setCountrydetailphotoAttribute($image)
    {
        if ($image) {
            $dest = 'admin-assets/images/photo/';
            $name = str_random(6) . '_' . $image->getClientOriginalName();
            $image->move($dest, $name);
            $this->attributes['countrydetailphoto'] = $name;
        }
    }

    public function setCountryphotoAttribute($image)
    {
        if ($image) {
            $dest = 'admin-assets/images/photo/';
            $name = str_random(6) . '_' . $image->getClientOriginalName();
            $image->move($dest, $name);
            $this->attributes['countryphoto'] = $name;
        }
    }
    public function setContactusphotoAttribute($image)
    {
        if ($image) {
            $dest = 'admin-assets/images/photo/';
            $name = str_random(6) . '_' . $image->getClientOriginalName();
            $image->move($dest, $name);
            $this->attributes['contactusphoto'] = $name;
        }
    }
}

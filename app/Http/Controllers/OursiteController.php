<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Main;
use App\Siteinfo;
use App\Blog;
use App\Aboutus;
use App\Teamwork;
use App\Cat;
use App\Tags;
use App\Contactinfo;
use App\Countries;
use App\Countryinfo;
use DB;
use App\Counter;
use App\Customers;
use App\Membership;
use App\ContactUs;
class OursiteController extends Controller
{

    public function index() {
        
        $main = Main::find(1);
        $team = Teamwork::all();
        $features = Aboutus::all();
        $counters = Counter::all();
        $countries = Countries::all();
         $blogs = Blog::select('id', 'photo', 'title', 'created_at', 'photo_alt','custom_url','desc')->orderBy('id','desc')->where('status',1)->get();
         $customers = Customers::all();

         $siteinfo = Siteinfo::all();


         return view('site.home', compact('siteinfo', 'team','features','countries','main','counters','blogs','customers'));
    }
      public function aboutus() {

        $main=Main::find(1);
        $team = TeamWork::all();
        $features = Aboutus::all();
       
        return view('site.aboutus', compact('team','features','main'));
    }

    public function contactus() {

        $main=Main::find(1);
        $team = TeamWork::all();
        $contacts = Contactinfo::all();

        return view('site.contactus', compact('team','contacts','main'));
    
    }

    public function blog() {

        $main=Main::find(1);
        $team = TeamWork::all();
        $contacts = Contactinfo::all();
        $blogs = Blog::select('id', 'photo', 'title', 'created_at', 'photo_alt', 'custom_url', 'desc')->orderBy('id', 'desc')->where('status', 1)->paginate(6);
 
        return view('site.blog', compact('team','main','blogs'));

    }

    public function countries() {

        $main = Main::find(1);
        $team = TeamWork::all();
        $contacts = Contactinfo::all();
        $countries = Countries::where('status', 1)->paginate(6);
        
       return view('site.countries',compact('team','main','countries'));
    }


    public function singlecountry($id) {

        $main=Main::find(1);
        $team = TeamWork::all();
        $contacts = Contactinfo::all();
        $singlecountry = Countries::where('custom_url',$id)->first();
        $countrylinks= Countries::where('id', $singlecountry->id)->get();
        $countryinfo = Countryinfo::where('id', $singlecountry->id)->get();

       return view('site.singlecountry',compact('team','main','singlecountry','countrylinks','countryinfo'));
    }

    public function singleblog($id) {

        $main=Main::find(1);
        $team = TeamWork::all();
        $contacts = Contactinfo::all();
        $mytags = Tags::all();
        $singleblog= Blog::where('custom_url',$id)->first();
        $singleblog->viewers+=1;
        $singleblog->save();
        $max = DB::table('blog')->max('viewers');
        $popular =DB::table('blog')->where('viewers',$max)->get();
        $related = Blog::where('cat_id', $singleblog->cat_id)->where('id', '<>', $singleblog->id)->get()->take('6');
        $cats =Cat::All(); 

       return view('site.singleblog',compact('team','main','singleblog','popular','cats','related','mytags','contacts'));
    }

    public function tag($id) {

        $tags= Tags::Where('tag', $tag)->paginate(6);

        if (count($tags) < 1) {

            abort(404);
        }  
          $main = Main::find(1);

       return View('Site.tags',compact('main','tags'));
   

    }

   public function subscribtion() {
   
      $main = Main::find(1);

   return View('Site.subscribtion',compact('main'));
}




public function submitcontactus(Request $request) {

    $insert = new ContactUs();
    $insert->name= $request->name;
    $insert->email = $request->email;
    $insert->subject= $request->subject;
    $insert->message = $request->message;
    $insert->save();

   if ($insert) {

   \Session::flash('message','message successfully added.'); 
   
        return back();   
}
}

public function  eshtark(Request $request) {
  
$insert = new Membership;
$insert->name=$request->name;
$insert->phone=$request->phone;
$insert->email=$request->email;
$insert->save();
if ($insert) {

    \Session::flash('messageeshtark','message successfully added.'); 
        
    return back();    
}


}





}

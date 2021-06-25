<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//======== add by me ============//
use App\BlogCat;
use App\Blog;
use App\Tags;
use App\Http\Requests\BlogRequest;
use App\BlogGalary;

//use Auth;

class BlogController extends Controller {

    //=======  request and model and view file =============//
    public function __construct(BlogRequest $request, Blog $model) {
        $this->request = $request;
        $this->model = $model;
        $this->view = 'admin/blogs/';
    }

    public function index() {
        if (is_null($this->request->value)) {
            $rows = $this->model->paginate(25);
        } else {
            $this->request->flash();
            $rows = $this->model->where('title', 'like', "%{$this->request->value}%")->orwhere('ar_title', 'like', "%{$this->request->value}%")
                    ->paginate(25);
        }
        $rows->setPath('blogs');
        if ($this->request->ajax()) {
            return response()->json(view($this->view . 'loop', compact('rows'))->render());
        }
        return View($this->view . 'index', compact('rows'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {

        $cats = BlogCat::pluck('name', 'id');
        return View($this->view . 'create', compact('cats'));
    }

    /**
     * Store a newly created resource in storage.
     *  
     * @return Response
     */
    public function store() {
        $insert = $this->model->create($this->request->all());
        if ($insert) {
            if ($this->request->hasFile('gallary')) {
                //Insert Blog Gallary
                $gallary = $this->request->file('gallary');
                foreach ($gallary as $photo) {
                    $name = str_random(6) . '_' . str_random(6);
                    $extension = strtolower($photo->getClientOriginalExtension());
                    if ($extension == "jpg" || $extension == "jpeg" || $extension == "png" || $extension == "gif") {
                        $galary = new BlogGalary();
                        $galary->photo = $name;
                        $galary->blog_id = $insert->id;
                        $galary->save();
                        $dest = 'admin-assets/images/blog/';
                        $photo->move($dest, $name);
                    }
                }
            }

            if ($this->request->has('tags')) {
                //insert Blog Tags
                $tags = $this->request['tags'] ;
              $btags= explode(" ",$tags);
                foreach($btags as $t) {
                    $new = new Tags();
                    $new->tag = $t;
                    $new->blog_id = $insert->id;
                    $new->save();
                }

            }
            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' => "Add Category Done Sucessfully"));
            return redirect()->back()->with('success', "Add Category Done Sucessfully");
        }
        else {
            if ($this->request->ajax())
                return response()->json(array('status' => 'false', 'message' => trans('Error')));
            return redirect()->back()->with('failed', trans('lang.Error'));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        $row = $this->model->find($id);
        if (empty($row)) {
            abort(404);
        }
        return View($this->view . 'single', compact('row'));
    }

    public function delphoto($id) {
        $photo = BlogGalary::find($id);
        $image = 'admin-assets/images/blog/' . $photo->photo;
        if (file_exists($image) && !empty($photo->photo)) {
            unlink($image);
        }
        $photo->delete();
        return redirect()->back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id) {
        $row = $this->model->where('id', $id)->first();
        $cats = BlogCat::all()->lists('name', 'id');

        if ($row) {
            return View($this->view . 'edit', compact('row', 'cats'));
        } else {
            abort(404);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id) {
        $update = $this->model->find($id)->update($this->request->all());
        if ($update) {
            if ($this->request->hasFile('gallary')) {
                //Insert Blog Gallary
                $gallary = $this->request->file('gallary');
                foreach ($gallary as $photo) {
                    $name = str_random(6) . '_' . str_random(6);
                    $extension = strtolower($photo->getClientOriginalExtension());
                    if ($extension == "jpg" || $extension == "jpeg" || $extension == "png" || $extension == "gif") {
                        $galary = new BlogGalary();
                        $galary->photo = $name;
                        $galary->blog_id = $id;
                        $galary->save();
                        $dest = 'admin-assets/images/blog/';
                        $photo->move($dest, $name);
                    }
                }
            }
            
            $tags = $this->request['tags'] ;
            $btags=explode(",",$tags);
            $delete = tags::where('blog_id','=',$id)->delete();
            foreach($btags as $tg){
            $add = new tags;
            $add->blog_id = $id;
            $add->tag = $tg;
            $add->save();
            }
            



            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' => 'Update Section Done'));
            return redirect()->back()->with('success', 'Update Section Done');
        }else {
            if ($this->request->ajax())
                return response()->json(array('status' => 'false', 'message' => 'Update Faild'));

            return redirect()->back()->with('failed', 'Update Faild');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        $delete = $this->model->destroy($id);
        if ($delete) {
            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' => trans('lang.deletedsuccessfully')));

            return redirect()->back()->with('failed', trans('lang.deletedsuccessfully'));
        }
        else {
            if ($this->request->ajax())
                return response()->json(array('status' => 'false', trans('lang.deletedfailed')));
            return redirect()->back()->with('failed', trans('lang.deletedfailed'));
        }
    }

}

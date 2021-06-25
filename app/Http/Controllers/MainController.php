<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//=========== add by my ==========//
use App\Http\Requests\MainRequest;  //============ request for this controller ==========//
use App\Main;
//========= admin model =============//
use App\Meta;

class MainController extends Controller {

    //=======  request and model and view file =============//
    public function __construct(MainRequest $request, Main $model) {
        $this->request = $request;
        $this->model = $model;
        $this->view = 'admin/main/';
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        $main = $this->model->find(1);
        if ($main) {
            return View($this->view . 'settings', compact('main'));
        } else {
            abort(404);
        }
    }

    public function update() {
        $update = $this->model->find(1)->update($this->request->all());
        if ($update) {
            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' => "Done .. This Add Process Done Successfully"));

            return redirect()->back()->with('success', trans('message.updatedsuccessfully'));
        }else {
            if ($this->request->ajax())
                return response()->json(array('status' => 'false', 'message' => trans('lang.updatedfailed')));

            return redirect()->back()->with('failed', trans('message.updatedfailed'));
        }
    }

    //////////////////////////////////   Meta Pages ///////////////////////////////////////////////////


    public function show() {
        $model = new Meta();
        if (is_null($this->request->value)) {
            $rows = $model->paginate(25);
        } else {
//            $this->request->flash();
//            $rows = $this->model->where('name', 'like', "%{$this->request->value}%")
//                    ->paginate(25);
        }
        $rows->setPath('photoes');
        if ($this->request->ajax()) {
            //  return response()->json(view($this->view . 'loop', compact('rows'))->render());
        }
        return View($this->view . 'pages', compact('rows'));
    }
     public function edit($id) {
        $model = new Meta();
        $row = $model->find($id);
        if ($row) {
            return View($this->view . 'page', compact('row'));
        } else {
            abort(404);
        }
    }
     public function updatemeta($id) {
        $model = new Meta();
        $update = $model->find($id)->update($this->request->all());
        if ($update) {
            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' => "Done .. This Add Process Done Successfully"));

            return redirect()->back()->with('success', trans('message.updatedsuccessfully'));
        }else {
            if ($this->request->ajax())
                return response()->json(array('status' => 'false', 'message' => trans('lang.updatedfailed')));

            return redirect()->back()->with('failed', trans('message.updatedfailed'));
        }
    }

    ////////////////////////////////////////////end meta pages ///////////////////////////////////////////

    public function create() {
        $photoes = Gallary::ALL();
        return View($this->view . 'gallary', compact('photoes'));
    }

    public function store() {
        $model = new Gallary();
        $insert = $model->create($this->request->all());
        if ($insert) {
            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' => "Done .. This Add Process Done Successfully"));
            return redirect()->back()->with('success', trans('lang.addedsuccessfully'));
        }
        else {
            if ($this->request->ajax())
                return response()->json(array('status' => 'false', 'message' => trans('lang.addedfailed')));
            return redirect()->back()->with('failed', trans('lang.addedfailed'));
        }
    }

    public function destroy($id) {
        $photo = Gallary::find($id);
        $image = 'adminstyle/assets/images/gallery/' . $photo->photo;
        if (file_exists($image) && !empty($photo->photo)) {
            unlink($image);
        }
        $photo->delete();
        return redirect()->back();
    }

    public function cvs() {
        $cvs = Career::all();
        return View($this->view . 'cvs', compact('cvs'));
    }

    public function delcv($id) {
        $photo = Career::find($id);
        $image = 'adminstyle/assets/images/cvs/' . $photo->photo;
        if (file_exists($image) && !empty($photo->photo)) {
            unlink($image);
        }
        $photo->delete();
        return redirect()->back();
    }

    public function supports() {
        $supports = Support::all();
        return View($this->view . 'supports', compact('supports'));
    }

    public function delsupports($id) {
        $photo = Support::find($id);
        $photo->delete();
        return redirect()->back();
    }

    public function contact() {
        $model = new Contactus();
        if (is_null($this->request->value)) {
            $messages = $model->paginate(25);
        } else {
            $this->request->flash();
            $messages = $model->where('name', 'like', "%{$this->request->value}%")
                    ->paginate(25);
        }
        $messages->setPath('sitemessage');
        if ($this->request->ajax()) {
            return response()->json(view($this->view . 'loop1', compact('messages'))->render());
        }
        return View($this->view . 'contactus', compact('messages'));
    }

    public function unseen() {
        $model = new Contactus();
        if (is_null($this->request->value)) {
            $messages = $model->where('seen', 0)->paginate(25);
        } else {
            $this->request->flash();
            $messages = $model->where('name', 'like', "%{$this->request->value}%")
                    ->paginate(25);
        }
        $messages->setPath('sitemessage');
        if ($this->request->ajax()) {
            return response()->json(view($this->view . 'loop1', compact('messages'))->render());
        }
        return View($this->view . 'contactus', compact('messages'));
    }

    public function contactus($id) {
        $model = new Contactus();
        $m = $model->find($id);
        if ($m) {
            $m->seen = 1;
            $m->save();
            return View($this->view . 'message', compact('m'));
        } else {
            abort(404);
        }
    }

    public function delmessage($id) {
        $photo = Contactus::find($id);
        $photo->delete();
        return redirect()->back();
    }

}

<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//=========== add by my ==========//
use App\Http\Requests\ProjectRequest;  //============ request for this controller ==========//
use App\Productsbenefits;   //========= admin model =============//
use App\Cat;
use App\Contactinfo;


class ContactsController extends Controller {

    //=======  request and model and view file =============//
    public function __construct(Request $request, Contactinfo $model) {
        $this->request = $request;
        $this->model = $model;
        $this->view = 'admin/contacts/';
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        if (is_null($this->request->value)) {
            $rows = $this->model->orderBy('id','desc')->paginate(25);
        } else {
            $this->request->flash();
            $rows =  $this->model->where('name', 'like', "%{$this->request->value}%")
                    ->paginate(25);
        }
        $rows->setPath('projectsbenefits');
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
        
        
        return View($this->view . 'create');
    }

    /**
     * Store a newly created resource in storage.
     *  
     * @return Response
     */
    public function store() {
       
        $insert = $this->model->create($this->request->all());
        if ($insert) {
            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' =>"Done .. This Add Process Done Successfully"));
            return redirect()->back()->with('success', trans('lang.addedsuccessfully'));
        }
        else {
            if ($this->request->ajax())
                return response()->json(array('status' => 'false', 'message' => trans('lang.addedfailed')));
            return redirect()->back()->with('failed', trans('lang.addedfailed'));
        }
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id) {
        $cats=Cat::all()->lists('name','id');
         $row = $this->model->find($id);
         if ($row) {
            return View($this->view . 'edit', compact('row','cats'));
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
        
        
         $update = $this->model->find($id)->update($array);
        if ($update) {
            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' =>"Done .. This Edit Process Done Successfully"));
        }else {
            if ($this->request->ajax())
                return response()->json(array('status' => 'false', 'message' => trans('lang.updatedfailed')));

            return redirect()->back()->with('failed', trans('message.updatedfailed'));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        $delete = $this->model->find($id);
         $image = 'admin-assets/images/projects/' . $delete->photo;
        if (file_exists($image) && !empty($delete->photo)) {
            unlink($image);
        }
        $delete->delete(); 
        return redirect()->back();
    }
        
     

}

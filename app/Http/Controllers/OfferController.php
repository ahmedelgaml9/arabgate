<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//=========== add by my ==========//
use App\Http\Requests\OfferRequest;  //============ request for this controller ==========//
use App\Offer;   //========= admin model =============//
use App\Offer_det;

class OfferController extends Controller {

    //=======  request and model and view file =============//
    public function __construct(OfferRequest $request, Offer $model) {
        $this->request = $request;
        $this->model = $model;
        $this->view = 'admin/offers/';
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        if (is_null($this->request->value)) {
            $rows = $this->model->paginate(25);
        } else {
            $this->request->flash();
            $rows = $this->model->where('title', 'like', "%{$this->request->value}%")
                    ->paginate(25);
        }
        $rows->setPath('offers');
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
            $properities = explode(',', $this->request['names']);
            for ($i = 0; $i < count($properities) - 1; $i++) {
                $item = new Offer_det();
                $item->name = $properities[$i];
                 $item->offer_id = $insert->id;
                $item->save();
            }
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

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
         $row = $this->model->find($id);
        if ($row) {
            return View($this->view . 'show', compact('row'));
        } else {
            abort(404);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id) {
        $row = $this->model->find($id);
        if ($row) {
            return View($this->view . 'edit', compact('row'));
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
             $properities = explode(',', $this->request['names']);
            for ($i = 0; $i < count($properities) - 1; $i++) {
                $item = new Offer_det();
                $item->name = $properities[$i];
                 $item->offer_id = $id;
                $item->save();
            }
            if ($this->request->ajax())
                return response()->json(array('status' => 'true', 'message' => "Done .. This Edit Process Done Successfully"));
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

<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//=========== add by my ==========//
use App\Photo;
use App\Http\Requests\PhotoRequest;

class PhotoesController extends Controller {

    public function __construct(PhotoRequest $request, Photo $model) {
        $this->request = $request;
        $this->model = $model;
        $this->view = 'admin/photoes/';
    }

    public function index() {
        if (is_null($this->request->value)) {
            $rows = $this->model->paginate(25);
        } else {
            $this->request->flash();
            $rows = $this->model->where('name', 'like', "%{$this->request->value}%")
                    ->paginate(25);
        }
        $rows->setPath('photoes');
        if ($this->request->ajax()) {
            return response()->json(view($this->view . 'loop', compact('rows'))->render());
        }
        return View($this->view . 'index', compact('rows'));
    }
 public function show($id) {
         $admin = $this->model->find($id);
         if ($admin) {
            return View($this->view . 'edit', compact('admin'));
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

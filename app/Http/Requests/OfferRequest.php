<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class OfferRequest extends Request {

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize() {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules() {

        switch ($this->method()) {
            case 'GET':
            case 'DELETE': {
                    return array();
                }
            case 'POST': {
                    return array(
                        'title' => 'required|min:3',
                    );
                }
            case 'PUT': {
                 return array(
                    'name'=>'required|min:3|max:30',
                        );
                }
            case 'PATCH': {
                    return array(
                        'title' => 'required|min:3',
                    );
                }
        }
    }

}

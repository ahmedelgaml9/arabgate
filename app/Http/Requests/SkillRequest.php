<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class SkillRequest extends Request {

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
                        'name' => 'required|min:3',
            
                    );
                }
            case 'PUT': {
                    
                }
            case 'PATCH': {
                    return array(
                        'name' => 'required|min:3',
                     );
                }
        }
    }

}

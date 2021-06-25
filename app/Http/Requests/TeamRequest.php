<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class TeamRequest extends Request {

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
                        'password' => 'required|confirmed|min:4',
                        'email' => 'required|email|unique:users',
                      );
                }
            case 'PUT': {
                    return array(
                        'password' => 'required|confirmed|min:4',
                    );
                }

            case 'PATCH': {
                    return array(
                        'name' => 'required|min:3',
                        'password' => 'confirmed|min:4',
                        'email' => 'required|email|unique:users,email,' . $this->route('users'), 
                      );
                }
        }
    }

}

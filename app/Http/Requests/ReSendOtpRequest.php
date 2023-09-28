<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ReSendOtpRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'contact' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'contact.required' => 'The email or phone number field is required',
        ];
    }
}

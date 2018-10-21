<?php

namespace Botble\Chuyengia\Http\Requests;

use Botble\Support\Http\Requests\Request;

class ChuyengiaRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     * @author DGL Custom
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'description' => 'required',
            'chucvu' => 'required',
            'bancovan' => 'required',
            'chuyenkhoa' => 'required',
            'hocvan' => 'required',
        ];
    }
}
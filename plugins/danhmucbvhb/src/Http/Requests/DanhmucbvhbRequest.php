<?php

namespace Botble\Danhmucbvhb\Http\Requests;

use Botble\Support\Http\Requests\Request;

class DanhmucbvhbRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     * @author Sang Nguyen
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'price_cates' => 'required',
            'price_type' => 'required',
        ];
    }
}

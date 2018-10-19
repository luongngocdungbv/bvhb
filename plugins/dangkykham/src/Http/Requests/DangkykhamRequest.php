<?php

namespace Botble\Dangkykham\Http\Requests;

use Botble\Support\Http\Requests\Request;

class DangkykhamRequest extends Request
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     * @author DGL Custom
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function rules()
    {
        if (setting('enable_captcha') && is_plugin_active('captcha')) {
            return [
                'name' => 'required',
                'email' => 'required|email',
                'chonkhoa' => 'required',
                'ngaysinh' => 'required',
                'content' => 'required',
                'g-recaptcha-response' => 'required|captcha',
            ];
        }
        return [
            'name' => 'required',
            'chonkhoa' => 'required',
            'ngaysinh' => 'required',
            'email' => 'required|email',
            'content' => 'required',
        ];
    }

    /**
     * @return array
     * @author DGL Custom
     */
    public function messages()
    {
        return [
            'name.required' => trans('plugins.dangkykham::dangkykham.name.required'),
            'ngaysinh.required' => 'Chưa nhập ngày sinh',
            'chonkhoa.required' => 'Chưa chọn chuyên khoa',
            'email.required' => trans('plugins.dangkykham::dangkykham.email.required'),
            'email.email' => trans('plugins.dangkykham::dangkykham.email.email'),
            'content.required' => trans('plugins.dangkykham::dangkykham.content.required'),
            'g-recaptcha-response.required' => trans('plugins.dangkykham::dangkykham.g-recaptcha-response.required'),
            'g-recaptcha-response.captcha' => trans('plugins.dangkykham::dangkykham.g-recaptcha-response.captcha'),
        ];
    }
}

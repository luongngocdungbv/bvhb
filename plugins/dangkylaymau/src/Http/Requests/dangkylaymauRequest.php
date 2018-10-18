<?php

namespace Botble\dangkylaymau\Http\Requests;

use Botble\Support\Http\Requests\Request;

class dangkylaymauRequest extends Request
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
                'content' => 'required',
                'g-recaptcha-response' => 'required|captcha',
            ];
        }
        return [
            'name' => 'required',
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
            'name.required' => trans('plugins.dangkylaymau::dangkylaymau.name.required'),
            'email.required' => trans('plugins.dangkylaymau::dangkylaymau.email.required'),
            'email.email' => trans('plugins.dangkylaymau::dangkylaymau.email.email'),
            'content.required' => trans('plugins.dangkylaymau::dangkylaymau.content.required'),
            'g-recaptcha-response.required' => trans('plugins.dangkylaymau::dangkylaymau.g-recaptcha-response.required'),
            'g-recaptcha-response.captcha' => trans('plugins.dangkylaymau::dangkylaymau.g-recaptcha-response.captcha'),
        ];
    }
}

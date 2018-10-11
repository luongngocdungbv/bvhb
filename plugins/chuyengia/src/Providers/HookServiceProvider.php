<?php

namespace Botble\Chuyengia\Providers;

use Botble\Chuyengia\Repositories\Interfaces\ChuyengiaInterface;
use Eloquent;
use Chuyengia;
use Illuminate\Support\ServiceProvider;
use Theme;

class HookServiceProvider extends ServiceProvider
{


    public function boot()
    {
        
        add_filter(BASE_FILTER_PUBLIC_SINGLE_DATA, [$this, 'handleSingleView'], 3, 1);

        //Theme::asset()->add('chuyengia-css', 'vendor/core/plugins/chuyengia/css/chuyengia.css');
    }

    public function handleSingleView($slug)
    {
        if ($slug instanceof Eloquent && $slug->reference == CHUYENGIA_MODULE_SCREEN_NAME) {
            
            $chuyengia = app(ChuyengiaInterface::class)->findById($slug->reference_id);

            $chuyengia = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $chuyengia, app(ChuyengiaInterface::class)->getModel(), CHUYENGIA_MODULE_SCREEN_NAME);

            Theme::breadcrumb()->add(__('<i class="fa fa-home" aria-hidden="true"></i>'), route('public.index'))->add($chuyengia->name, route('public.single', $slug->key));

            do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, CHUYENGIA_MODULE_SCREEN_NAME, $chuyengia);

            return [
                'view' => 'chuyengia',
                'data' => compact('chuyengia'),
            ];
        }
        return $slug;
    }
}

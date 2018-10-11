<?php

namespace Botble\Danhmucbvhb\Providers;

use Botble\Danhmucbvhb\Repositories\Interfaces\DanhmucbvhbInterface;
use Eloquent;
use Danhmucbvhb;
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
        if ($slug instanceof Eloquent && $slug->reference == DANHMUCBVHB_MODULE_SCREEN_NAME) {
            
            $Danhmucbvhb = app(DanhmucbvhbInterface::class)->findById($slug->reference_id);

            $Danhmucbvhb = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $Danhmucbvhb, app(DanhmucbvhbInterface::class)->getModel(), DANHMUCBVHB_MODULE_SCREEN_NAME);

            Theme::breadcrumb()->add(__('<i class="fa fa-home" aria-hidden="true"></i>'), route('public.index'))->add($Danhmucbvhb->name, route('public.single', $slug->key));

            do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, DANHMUCBVHB_MODULE_SCREEN_NAME, $Danhmucbvhb);

            return [
                'view' => 'Danhmucbvhb', // Chuyền đến file view Public/Theme/Your theme/ view -> name view Danhmucbvhb
                'data' => compact('Danhmucbvhb'), //chuyền data đến view Danhmucbvhb
            ];
        }
        return $slug;
    }
}

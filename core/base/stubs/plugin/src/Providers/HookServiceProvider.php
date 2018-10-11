<?php

namespace Botble\{Plugin}\Providers;

use Botble\{Plugin}\Repositories\Interfaces\{Plugin}Interface;
use Eloquent;
use {Plugin};
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
        if ($slug instanceof Eloquent && $slug->reference == {PLUGIN}_MODULE_SCREEN_NAME) {
            
            ${Plugin} = app({Plugin}Interface::class)->findById($slug->reference_id);

            ${Plugin} = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, ${Plugin}, app({Plugin}Interface::class)->getModel(), {PLUGIN}_MODULE_SCREEN_NAME);

            Theme::breadcrumb()->add(__('<i class="fa fa-home" aria-hidden="true"></i>'), route('public.index'))->add(${Plugin}->name, route('public.single', $slug->key));

            do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, {PLUGIN}_MODULE_SCREEN_NAME, ${Plugin});

            return [
                'view' => '{Plugin}', // Chuyền đến file view Public/Theme/Your theme/ view -> name view {Plugin}
                'data' => compact('{Plugin}'), //chuyền data đến view {Plugin}
            ];
        }
        return $slug;
    }
}

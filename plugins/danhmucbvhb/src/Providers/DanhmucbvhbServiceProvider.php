<?php

namespace Botble\Danhmucbvhb\Providers;

use Botble\Danhmucbvhb\Models\Danhmucbvhb;
use Illuminate\Support\ServiceProvider;
use Botble\Danhmucbvhb\Repositories\Caches\DanhmucbvhbCacheDecorator;
use Botble\Danhmucbvhb\Repositories\Eloquent\DanhmucbvhbRepository;
use Botble\Danhmucbvhb\Repositories\Interfaces\DanhmucbvhbInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Language;
use SeoHelper;

class DanhmucbvhbServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author DGL Custom
     */
    public function register()
    {
        if (setting('enable_cache', false)) {
            $this->app->singleton(DanhmucbvhbInterface::class, function () {
                return new DanhmucbvhbCacheDecorator(new DanhmucbvhbRepository(new Danhmucbvhb()), new Cache($this->app['cache'], DanhmucbvhbRepository::class));
            });
        } else {
            $this->app->singleton(DanhmucbvhbInterface::class, function () {
                return new DanhmucbvhbRepository(new Danhmucbvhb());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author DGL Custom
     */
    public function boot()
    {
        $this->setIsInConsole($this->app->runningInConsole())
            ->setNamespace('plugins/danhmucbvhb')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishViews()
            ->loadAndPublishTranslations()
            ->loadRoutes();

        $this->app->register(RouteServiceProvider::class);
        $this->app->register(HookServiceProvider::class);

       /* Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-danhmucbvhb',
                'priority' => 5,
                'parent_id' => null,
                'name' => trans('plugins.danhmucbvhb::danhmucbvhb.name'),
                'icon' => 'fa fa-list',
                'url' => route('danhmucbvhb.list'),
                'permissions' => ['danhmucbvhb.list'],
            ]);
        });*/

        if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
            Language::registerModule([DANHMUCBVHB_MODULE_SCREEN_NAME]);
        }

        $this->app->booted(function () {
            config(['core.slug.general.supported' => array_merge(config('core.slug.general.supported'), [DANHMUCBVHB_MODULE_SCREEN_NAME])]);
            //config(['core.slug.general.prefixes.' . DANHMUCBVHB_MODULE_SCREEN_NAME => 'chuyengia']);

            SeoHelper::registerModule([DANHMUCBVHB_MODULE_SCREEN_NAME]);
        });
    }

    

}

<?php

namespace Botble\Chuyengia\Providers;

use Botble\Chuyengia\Models\Chuyengia;
use Illuminate\Support\ServiceProvider;
use Botble\Chuyengia\Repositories\Caches\ChuyengiaCacheDecorator;
use Botble\Chuyengia\Repositories\Eloquent\ChuyengiaRepository;
use Botble\Chuyengia\Repositories\Interfaces\ChuyengiaInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Language;
use SeoHelper;


class ChuyengiaServiceProvider extends ServiceProvider
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
            $this->app->singleton(ChuyengiaInterface::class, function () {
                return new ChuyengiaCacheDecorator(new ChuyengiaRepository(new Chuyengia()), new Cache($this->app['cache'], ChuyengiaRepository::class));
            });
        } else {
            $this->app->singleton(ChuyengiaInterface::class, function () {
                return new ChuyengiaRepository(new Chuyengia());
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
            ->setNamespace('plugins/chuyengia')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishViews()
            ->loadAndPublishTranslations()
            ->loadRoutes();

        $this->app->register(RouteServiceProvider::class);
        $this->app->register(HookServiceProvider::class);

        /*Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-chuyengia',
                'priority' => 5,
                'parent_id' => null,
                'name' => trans('plugins.chuyengia::chuyengia.name'),
                'icon' => 'fa fa-list',
                'url' => route('chuyengia.list'),
                'permissions' => ['chuyengia.list'],
            ]);
        });*/


            Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-chuyengia',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'Dịch Vụ Viện',
                'icon' => 'fas fa-briefcase-medical',
                'url' => route('chuyengia.list'),
                'permissions' => ['chuyengia.list'],
            ])
                ->registerItem([
                    'id' => 'cms-plugins-chuyengia1',
                    'priority' => 5,
                    'parent_id' => 'cms-plugins-chuyengia',
                    'name' => trans('plugins.chuyengia::chuyengia.name'),
                    'icon' => 'fas fa-users',
                    'url' => route('chuyengia.list'),
                    'permissions' => ['chuyengia.list'],
                ])
                ->registerItem([
                   'id' => 'cms-plugins-dangkykham',
                    'priority' => 120,
                    'parent_id' => 'cms-plugins-chuyengia',
                    'name' => trans('plugins.dangkykham::dangkykham.menu'),
                    'icon' => 'fas fa-briefcase-medical',
                    'url' => route('dangkykhams.list'),
                    'permissions' => ['dangkykhams.list'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-danhmucbvhb',
                    'priority' => 5,
                    'parent_id' => 'cms-plugins-chuyengia',
                    'name' => trans('plugins.danhmucbvhb::danhmucbvhb.name'),
                    'url' => route('danhmucbvhb.list'),
                    'icon' => 'fa fa-list',
                    'permissions' => ['danhmucbvhb.list'],
                ])
                 ->registerItem([
                    'id' => 'cms-plugins-dangkylaymau',
                    'priority' => 120,
                    'parent_id' => 'cms-plugins-chuyengia',
                    'name' => trans('plugins.dangkylaymau::dangkylaymau.menu'),
                    'icon' => 'fas fa-heartbeat',
                    'url' => route('dangkylaymaus.list'),
                    'permissions' => ['dangkylaymaus.list'],
                ]);

                
        });




        if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
            Language::registerModule([CHUYENGIA_MODULE_SCREEN_NAME]);
        }

        $this->app->booted(function () {
            config(['core.slug.general.supported' => array_merge(config('core.slug.general.supported'), [CHUYENGIA_MODULE_SCREEN_NAME])]);
            //config(['core.slug.general.prefixes.' . CHUYENGIA_MODULE_SCREEN_NAME => 'chuyengia']);

            SeoHelper::registerModule([CHUYENGIA_MODULE_SCREEN_NAME]);
        });

    }
}

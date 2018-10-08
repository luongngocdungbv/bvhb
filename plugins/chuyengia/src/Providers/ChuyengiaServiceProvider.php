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

class ChuyengiaServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author Sang Nguyen
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
     * @author Sang Nguyen
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

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-chuyengia',
                'priority' => 5,
                'parent_id' => null,
                'name' => trans('plugins.chuyengia::chuyengia.name'),
                'icon' => 'fa fa-list',
                'url' => route('chuyengia.list'),
                'permissions' => ['chuyengia.list'],
            ]);
        });
    }
}

<?php

namespace Botble\Dangkykham\Providers;

use Botble\Base\Events\SessionStarted;
use Botble\Base\Supports\Helper;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Dangkykham\Repositories\Interfaces\DangkykhamInterface;
use Botble\Dangkykham\Models\Dangkykham;
use Botble\Dangkykham\Repositories\Caches\DangkykhamCacheDecorator;
use Botble\Dangkykham\Repositories\Eloquent\DangkykhamRepository;
use Botble\Support\Services\Cache\Cache;
use Event;
use Illuminate\Support\ServiceProvider;
use MailVariable;

class DangkykhamServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * Register the service provider.
     *
     * @return void
     * @author DGL Custom
     */
    public function register()
    {
        if (setting('enable_cache', false)) {
            $this->app->singleton(DangkykhamInterface::class, function () {
                return new DangkykhamCacheDecorator(new DangkykhamRepository(new Dangkykham()), new Cache($this->app['cache'], DangkykhamRepository::class));
            });
        } else {
            $this->app->singleton(DangkykhamInterface::class, function () {
                return new DangkykhamRepository(new Dangkykham());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * Boot the service provider.
     * @author DGL Custom
     */
    public function boot()
    {
        $this->setIsInConsole($this->app->runningInConsole())
            ->setNamespace('plugins/dangkykham')
            ->loadAndPublishConfigurations(['permissions', 'email'])
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadAndPublishTranslations()
            ->loadMigrations();

        $this->app->register(HookServiceProvider::class);

        /*Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-dangkykham',
                'priority' => 120,
                'parent_id' => null,
                'name' => trans('plugins.dangkykham::dangkykham.menu'),
                'icon' => 'fas fa-briefcase-medical',
                'url' => route('dangkykhams.list'),
                'permissions' => ['dangkykhams.list'],
            ]);
        });*/

        MailVariable::setModule(DANGKYKHAM_MODULE_SCREEN_NAME)
            ->addVariables([
                'dangkykham_name' => __('Đăng ký khám name'),
                'dangkykham_subject' => __('Đăng ký khám subject'),
                'dangkykham_ngaysinh' => __('Đăng ký khám Ngày sinh'),
                'dangkykham_chonkhoa' => __('Đăng ký khám chuyên khoa'),
                'dangkykham_email' => __('Đăng ký khám email'),
                'dangkykham_phone' => __('Đăng ký khám phone'),
                'dangkykham_address' => __('Đăng ký khám address'),
                'dangkykham_content' => __('Đăng ký khám content'),
            ]);
    }
}

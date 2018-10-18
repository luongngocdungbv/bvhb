<?php

namespace Botble\dangkylaymau\Providers;

use Botble\Base\Events\SessionStarted;
use Botble\Base\Supports\Helper;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\dangkylaymau\Repositories\Interfaces\dangkylaymauInterface;
use Botble\dangkylaymau\Models\dangkylaymau;
use Botble\dangkylaymau\Repositories\Caches\dangkylaymauCacheDecorator;
use Botble\dangkylaymau\Repositories\Eloquent\dangkylaymauRepository;
use Botble\Support\Services\Cache\Cache;
use Event;
use Illuminate\Support\ServiceProvider;
use MailVariable;

class dangkylaymauServiceProvider extends ServiceProvider
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
            $this->app->singleton(dangkylaymauInterface::class, function () {
                return new dangkylaymauCacheDecorator(new dangkylaymauRepository(new dangkylaymau()), new Cache($this->app['cache'], dangkylaymauRepository::class));
            });
        } else {
            $this->app->singleton(dangkylaymauInterface::class, function () {
                return new dangkylaymauRepository(new dangkylaymau());
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
            ->setNamespace('plugins/dangkylaymau')
            ->loadAndPublishConfigurations(['permissions', 'email'])
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadAndPublishTranslations()
            ->loadMigrations();

        $this->app->register(HookServiceProvider::class);

        /*Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-dangkylaymau',
                'priority' => 120,
                'parent_id' => null,
                'name' => trans('plugins.dangkylaymau::dangkylaymau.menu'),
                'icon' => 'fas fa-briefcase-medical',
                'url' => route('dangkylaymaus.list'),
                'permissions' => ['dangkylaymaus.list'],
            ]);
        });*/

        MailVariable::setModule(dangkylaymau_MODULE_SCREEN_NAME)
            ->addVariables([
                'dangkylaymau_name' => __('Đăng ký lấy máu name'),
                'dangkylaymau_subject' => __('Đăng ký lấy máu subject'),
                'dangkylaymau_email' => __('Đăng ký lấy máu email'),
                'dangkylaymau_phone' => __('Đăng ký lấy máu phone'),
                'dangkylaymau_address' => __('Đăng ký lấy máu address'),
                'dangkylaymau_content' => __('Đăng ký lấy máu content'),
            ]);
    }
}

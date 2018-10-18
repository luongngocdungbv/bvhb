<?php

namespace Botble\Dangkykham\Providers;

use Auth;
use Illuminate\Support\ServiceProvider;
use Botble\Dangkykham\Repositories\Interfaces\DangkykhamInterface;

class HookServiceProvider extends ServiceProvider
{
    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * Boot the service provider.
     * @author DGL Custom
     * @throws \Throwable
     */
    public function boot()
    {
        add_filter(BASE_FILTER_TOP_HEADER_LAYOUT, [$this, 'registerTopHeaderNotification'], 120);
        add_filter(BASE_FILTER_APPEND_MENU_NAME, [$this, 'getUnReadCount'], 120, 2);
        add_shortcode('dangkykham-form', __('Đăng ký khám form'), __('Add dangkykham form'), [$this, 'form']);
        add_filter(BASE_FILTER_AFTER_SETTING_EMAIL_CONTENT, [$this, 'addDangkykhamSetting'], 99, 1);
        shortcode()->setAdminConfig('dangkykham-form', view('plugins.dangkykham::partials.short-code-admin-config')->render());
    }

    /**
     * @param string $options
     * @return string
     * @author DGL Custom
     * @throws \Throwable
     */
    public function registerTopHeaderNotification($options)
    {
        if (Auth::user()->hasPermission('dangkykhams.edit')) {
            $dangkykhams = $this->app->make(DangkykhamInterface::class)
                ->getUnread(['id', 'name', 'email', 'phone', 'created_at']);

            return $options . view('plugins.dangkykham::partials.notification', compact('dangkykhams'))->render();
        }
        return null;
    }

    /**
     * @param $number
     * @param $menu_id
     * @return string
     * @author DGL Custom
     */
    public function getUnreadCount($number, $menu_id)
    {
        if ($menu_id == 'cms-plugins-dangkykham') {
            $unread = $this->app->make(DangkykhamInterface::class)->countUnread();
            if ($unread > 0) {
                return '<span class="badge badge-success">' . $unread . '</span>';
            }
        }
        return $number;
    }

    /**
     * @return string
     * @throws \Throwable
     */
    public function form($shortcode)
    {
        $view = 'plugins.dangkykham::forms.dangkykham';

        if ($shortcode->view && view()->exists($shortcode->view)) {
            $view = $shortcode->view;
        }
        return view($view, ['header' => $shortcode->header])->render();
    }

    /**
     * @param null $data
     * @return string
     * @throws \Throwable
     * @author DGL Custom
     */
    public function addDangkykhamSetting($data = null)
    {
        return $data . view('plugins.dangkykham::setting')->render();
    }
}

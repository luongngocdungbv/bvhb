<?php

namespace Botble\dangkylaymau\Providers;

use Auth;
use Illuminate\Support\ServiceProvider;
use Botble\dangkylaymau\Repositories\Interfaces\dangkylaymauInterface;

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
        add_shortcode('dangkylaymau-form', __('Đăng ký lấy máu form'), __('Add dangkylaymau form'), [$this, 'form']);
        add_filter(BASE_FILTER_AFTER_SETTING_EMAIL_CONTENT, [$this, 'adddangkylaymauSetting'], 99, 1);
        shortcode()->setAdminConfig('dangkylaymau-form', view('plugins.dangkylaymau::partials.short-code-admin-config')->render());
    }

    /**
     * @param string $options
     * @return string
     * @author DGL Custom
     * @throws \Throwable
     */
    public function registerTopHeaderNotification($options)
    {
        if (Auth::user()->hasPermission('dangkylaymaus.edit')) {
            $dangkylaymaus = $this->app->make(dangkylaymauInterface::class)
                ->getUnread(['id', 'name', 'email', 'phone', 'created_at']);

            return $options . view('plugins.dangkylaymau::partials.notification', compact('dangkylaymaus'))->render();
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
        if ($menu_id == 'cms-plugins-dangkylaymau') {
            $unread = $this->app->make(dangkylaymauInterface::class)->countUnread();
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
        $view = 'plugins.dangkylaymau::forms.dangkylaymau';

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
    public function adddangkylaymauSetting($data = null)
    {
        return $data . view('plugins.dangkylaymau::setting')->render();
    }
}

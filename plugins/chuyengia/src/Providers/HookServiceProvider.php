<?php

namespace Botble\Chuyengia\Providers;

use Botble\Chuyengia\Repositories\Interfaces\ChuyengiaInterface;
use Eloquent;
use Chuyengia;
use Illuminate\Support\ServiceProvider;
use Theme;

class HookServiceProvider extends ServiceProvider
{

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        //add_action(BASE_ACTION_META_BOXES, [$this, 'addChuyengiaBox'], 13, 3);
        //add_shortcode('chuyengia', __('chuyengia images'), __('Add a chuyengia'), [$this, 'render']);
        //shortcode()->setAdminConfig('chuyengia', view('chuyengia::partials.short-code-admin-config')->render());
        add_filter(BASE_FILTER_PUBLIC_SINGLE_DATA, [$this, 'handleSingleView'], 3, 1);

        Theme::asset()->add('chuyengia-css', 'vendor/core/plugins/chuyengia/css/chuyengia.css');
    }

    /**
     * @param $screen
     * @author Sang Nguyen
     */
    public function addChuyengiaBox($screen)
    {
        /*if (in_array($screen, Chuyengia::getScreens())) {
            add_meta_box('chuyengia_wrap', trans('chuyengia::chuyengia.chuyengia_box'), [$this, 'chuyengiaMetaField'], $screen, 'advanced', 'default');
        }*/
    }

    /**
     * @author Sang Nguyen
     * @throws \Throwable
     */
    public function chuyengiaMetaField()
    {
        /*$value = null;
        $args = func_get_args();
        if (!empty($args[0])) {
            $value = chuyengia_meta_data($args[0]->id, $args[1]);
        }
        return view('chuyengia::chuyengia-box', compact('value'))->render();*/
    }

    /**
     * @param $shortcode
     * @return null
     * @author Sang Nguyen
     */
    public function render($shortcode)
    {
        return render_chuyengias($shortcode->limit);
    }

    /**
     * @param $slug
     * @return array
     * @author Sang Nguyen
     */
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

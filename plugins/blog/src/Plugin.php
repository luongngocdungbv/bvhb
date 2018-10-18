<?php

namespace Botble\Blog;

use Botble\Dashboard\Repositories\Interfaces\DashboardWidgetInterface;
use Schema;
use Botble\Base\Interfaces\PluginInterface;

class Plugin implements PluginInterface
{

    /**
     * @author DGL Custom
     */
    public static function activate()
    {
    }

    /**
     * @author DGL Custom
     */
    public static function deactivate()
    {
    }

    /**
     * @author DGL Custom
     */
    public static function remove()
    {
        Schema::dropIfExists('posts');
        Schema::dropIfExists('categories');
        Schema::dropIfExists('tags');

        app(DashboardWidgetInterface::class)->deleteBy(['name' => 'widget_posts_recent']);
    }
}

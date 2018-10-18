<?php

namespace Botble\Base\Interfaces;

interface PluginInterface
{

    /**
     * @author DGL Custom
     */
    public static function activate();

    /**
     * @author DGL Custom
     */
    public static function deactivate();

    /**
     * @author DGL Custom
     */
    public static function remove();
}

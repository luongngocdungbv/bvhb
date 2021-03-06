<?php

namespace Botble\Assets\Facades;

use Botble\Assets\Assets;
use Illuminate\Support\Facades\Facade;

/**
 * Class AssetsFacade
 * @package Botble\Assets\Facade
 * @author DGL Custom
 * @since 22/07/2015 11:25 PM
 */
class AssetsFacade extends Facade
{

    /**
     * @return string
     * @author DGL Custom
     */
    protected static function getFacadeAccessor()
    {
        return Assets::class;
    }
}

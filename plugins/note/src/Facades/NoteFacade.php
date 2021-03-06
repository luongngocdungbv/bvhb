<?php

namespace Botble\Note\Facades;

use Botble\Note\Note;
use Illuminate\Support\Facades\Facade;

class NoteFacade extends Facade
{
    /**
     * Get the registered name of the component.
     *
     * @return string
     * @author DGL Custom
     */
    protected static function getFacadeAccessor()
    {
        return Note::class;
    }
}

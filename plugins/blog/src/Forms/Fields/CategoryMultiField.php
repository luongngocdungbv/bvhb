<?php

namespace Botble\Blog\Forms\Fields;

use Kris\LaravelFormBuilder\Fields\FormField;

class CategoryMultiField extends FormField
{

    /**
     * @return string
     * @author DGL Custom
     */
    protected function getTemplate()
    {
        return 'plugins.blog::categories.partials.categories-multi';
    }
}
<?php

use Botble\Widget\AbstractWidget;

class TinnoiboWidget extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * @var string
     */
    protected $frontendTemplate = 'frontend';

    /**
     * @var string
     */
    protected $backendTemplate = 'backend';

    /**
     * @var string
     */
    protected $widgetDirectory = 'tinnoibo';

    /**
     * Widget constructor.
     * @author DGL Custom
     */
    public function __construct()
    {
        parent::__construct([
            'name' => 'Tin nội bộ',
            'description' => __('Tin nội bộ'),
            'number_display' => 5,
            'get_posts_by_category_id'=>25,
        ]);
    }
}
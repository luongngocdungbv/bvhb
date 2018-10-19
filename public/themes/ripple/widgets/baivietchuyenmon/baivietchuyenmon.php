<?php

use Botble\Widget\AbstractWidget;

class BaivietchuyenmonWidget extends AbstractWidget
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
    protected $widgetDirectory = 'baivietchuyenmon';

    /**
     * Widget constructor.
     * @author DGL Custom
     */
    public function __construct()
    {
        parent::__construct([
            'name' => 'Bài viết chuyên môn',
            'description' => __('Bài viết chuyên môn'),
            'number_display' => 5,
            'get_posts_by_category_id'=>34,
        ]);
    }
}
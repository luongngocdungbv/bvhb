<?php
/*
require_once __DIR__ . '/../vendor/autoload.php';

use Illuminate\Http\Request;

register_page_template([
    'default' => 'Default'
]);

register_sidebar([
    'id' => 'footer_sidebar',
    'name' => __('Footer sidebar'),
    'description' => __('This is footer sidebar section'),
]);

theme_option()
    ->setArgs(['debug' => true])
    ->setSection([
        'title' => __('General'),
        'desc' => __('General settings'),
        'id' => 'opt-text-subsection-general',
        'subsection' => true,
        'icon' => 'fa fa-home',
    ])
    ->setSection([
        'title' => __('About Us'),
        'desc' => __('About Us Settings'),
        'id' => 'opt-text-subsection-section-about-theme',
        'subsection' => true,
        'icon' => 'fa fa-home',
    ])
    ->setSection([
        'title' => __('Logo'),
        'desc' => __('Change logo'),
        'id' => 'opt-text-subsection-logo',
        'subsection' => true,
        'icon' => 'fa fa-image',
        'fields' => [
            [
                'id' => 'logo',
                'type' => 'mediaImage',
                'label' => __('Logo'),
                'attributes' => [
                    'name' => 'logo',
                    'value' => null,
                ],
            ],
        ],
    ])
    ->setSection([
        'title' => __('Banner Ads'),
        'desc' => __('Change image'),
        'id' => 'opt-text-subsection-banner-ads',
        'subsection' => true,
        'icon' => 'fa fa-image',
        'fields' => [
            [
                'id' => 'banner-link',
                'type' => 'text',
                'label' => __('URL'),
                'attributes' => [
                    'name' => 'banner-link',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => __('Link to target URL'),
                        'data-counter' => 255,
                    ]
                ],
            ],
            [
                'id' => 'banner_On_Off',
                'type' => 'onOff',
                'label' => __('ON/OFF'),
                'attributes' => [
                    'name' => 'banner_On_Off',
                    'value' => 1,
                    'data' => [
                        0 => 'No',
                        1 => 'Yes',
                    ],
                    'options' => [],// Optional
                ],
                'helper' => __('Hide / UnHide Banner!'),
            ],
            [
                'id' => 'banner-new-tab',
                'type' => 'select',
                'label' => __('Open in new tab?'),
                'attributes' => [
                    'name' => 'banner-new-tab',
                    'data' => [
                        0 => 'No',
                        1 => 'Yes',
                    ],
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id' => 'banner-ads',
                'type' => 'mediaImage',
                'label' => __('Image'),
                'attributes' => [
                    'name' => 'banner-ads',
                    'value' => null,
                ],
            ],
        ],
    ])
    ->setField([
        'id' => 'copyright',
        'section_id' => 'opt-text-subsection-general',
        'type' => 'text',
        'label' => __('Copyright'),
        'attributes' => [
            'name' => 'copyright',
            'value' => '© 2016 Botble Technologies. All right reserved. Designed by Nghia Minh',
            'options' => [
                'class' => 'form-control',
                'placeholder' => __('Change copyright'),
                'data-counter' => 120,
            ],
        ],
        'helper' => __('Copyright on footer of site'),
    ])
    ->setField([
        'id' => 'About_theme',
        'section_id' => 'opt-text-subsection-section-about-theme',
        'type' => 'editor',
        'label' => __('Field label'),
        'attributes' => [
            'name' => 'About_theme',
            'value' => null, 
            'options' => [ 
                'class' => 'form-control theme-option-textarea',
                'row' => '10',
            ],
        ],
        'helper' => __('Helper for this field (optional)'),
    ]);

add_action(BASE_ACTION_META_BOXES, 'add_addition_fields_in_post_screen', 24, 3);


function add_addition_fields_in_post_screen($screen, $context)
{
    if (is_plugin_active('blog') && $screen == POST_MODULE_SCREEN_NAME && $context == 'advanced') {
        add_meta_box('additional_post_fields', 'Addition Information', 'post_additional_fields', $screen, $context, 'default');
    }
}

function post_additional_fields()
{
    $video_link = null;
    $args = func_get_args();
    if (!empty($args[0])) {
        $video_link = get_meta_data($args[0]->id, 'video_link', $args[1], true);
    }
    return Theme::partial('post-fields', compact('video_link'));
}

add_action(BASE_ACTION_AFTER_CREATE_CONTENT, 'save_addition_post_fields', 230, 3);
add_action(BASE_ACTION_AFTER_UPDATE_CONTENT, 'save_addition_post_fields', 231, 3);


function save_addition_post_fields($type, Request $request, $object)
{
    if (is_plugin_active('blog') && $type == POST_MODULE_SCREEN_NAME) {
        save_meta_data($object->id, 'video_link', $request->input('video_link'), $type);
    }
}

*/




use Illuminate\Contracts\Filesystem\FileNotFoundException;

require_once __DIR__ . '/../vendor/autoload.php';

register_page_template([
    'default' => __('Default'),
]);

register_sidebar([
    'id' => 'top_sidebar',
    'name' => __('Top sidebar'),
    'description' => __('This is top sidebar section'),
]);

register_sidebar([
    'id' => 'footer_sidebar',
    'name' => __('Footer sidebar'),
    'description' => __('This is footer sidebar section'),
]);

add_shortcode('google-map', 'Google map', 'Custom map', 'add_google_map_shortcode');


function add_google_map_shortcode($shortcode)
{
    return Theme::partial('google-map', ['address' => $shortcode->content]);
}

try {
    shortcode()->setAdminConfig('google-map', Theme::partial('google-map-admin-config'));
} catch (FileNotFoundException $exception) {
    info($exception->getMessage());
}

add_shortcode('youtube-video', 'Youtube video', 'Add youtube video', 'add_youtube_video_shortcode');


function add_youtube_video_shortcode($shortcode)
{
    return Theme::partial('video', ['url' => $shortcode->content]);
}

try {
    shortcode()->setAdminConfig('youtube-video', Theme::partial('youtube-admin-config'));
} catch (FileNotFoundException $exception) {
    info($exception->getMessage());
}

theme_option()
    ->setArgs(['debug' => config('app.debug')])
    ->setSection([
        'title' => __('General'),
        'desc' => __('General settings'),
        'id' => 'opt-text-subsection-general',
        'subsection' => true,
        'icon' => 'fa fa-home',
    ])
     ->setSection([
        'title' => __('Bản quyền'),
        'desc' => __('Bản quyền settings'),
        'id' => 'opt-text-subsection-section-banquyen',
        'subsection' => true,
        'icon' => 'fa fa-home',
    ])
    ->setSection([
        'title' => __('Logo'),
        'desc' => __('Change logo'),
        'id' => 'opt-text-subsection-logo',
        'subsection' => true,
        'icon' => 'fa fa-image',
        'fields' => [
            [
                'id' => 'logo',
                'type' => 'mediaImage',
                'label' => __('Logo'),
                'attributes' => [
                    'name' => 'logo',
                    'value' => null,
                ],
            ],
               [
                'id' => 'slogan',
                'type' => 'mediaImage',
                'label' => __('Logo Slogan'),
                'attributes' => [
                    'name' => 'slogan',
                    'value' => null,
                ],
            ],
        ],
    ])
    ->setField([
    'id' => 'banquyen',
    'section_id' => 'opt-text-subsection-section-banquyen',
    'type' => 'editor',
    'label' => __('Bản Quyền'),
    'attributes' => [
        'name' => 'banquyen',
        'value' => null, // Default value
        'options' => [ // Optional
            'class' => 'form-control theme-option-textarea',
            'row' => '10',
        ],
    ],
    'helper' => __('Nhập thông tin bản quyền'),
    ])
    ->setField([
        'id' => 'copyright',
        'section_id' => 'opt-text-subsection-general',
        'type' => 'text',
        'label' => __('Copyright'),
        'attributes' => [
            'name' => 'copyright',
            'value' => __('© 2017 Botble Technologies. All right reserved. Designed by Nghia Minh'),
            'options' => [
                'class' => 'form-control',
                'placeholder' => __('Change copyright'),
                'data-counter' => 255,
            ],
        ],
        'helper' => __('Copyright on footer of site'),
    ]);

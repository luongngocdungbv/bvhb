@if (is_plugin_active('simple-slider'))
    {!! do_shortcode('[simple-slider key="home-slidersh"]') !!}
@endif
<section class="section pt-50 pb-50">
    <div class="container">
        <div class="page-content">
            <div class="post-group post-group--single">
              
                <div class="post-group__content">
                    <div class="wrap_item_left">
                        <!---menu-custom-center -->
                        {!!
                            Menu::generateMenu([
                                'slug' => 'menu-custom-center',
                                'options' => ['class' => 'menu sub-menu--slideLeft'],
                                'view' => 'menu-custom-center',
                            ])
                        !!}
                        <!-- menu-custom-bottom -->
                        {!!
                            Menu::generateMenu([
                                'slug' => 'menu-custom-bottom',
                                'options' => ['class' => 'menu sub-menu--slideLeft'],
                                'view' => 'menu-custom-bottom',
                            ])
                        !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section pt-50 pb-50 bg-lightgray">
    <div class="container">
        <div class="col-md-2 col-sm-12 col-xs-12">
            @if(theme_option('logo') == true)
            <img src="{{ url(theme_option('logo')) }}" alt="{{ setting('site_title') }}">
            @endif
        </div>
        <div class="col-md-10 col-sm-12 col-xs-12">
            {{'[static-block alias="about-us"]'}}
        </div>
    </div>
</section>

@if (function_exists('render_galleries'))
    {!! render_galleries(8) !!}
@endif

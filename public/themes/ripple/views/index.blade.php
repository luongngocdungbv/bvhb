@if (is_plugin_active('simple-slider'))
    {!! do_shortcode('[simple-slider key="home-slidersh"]') !!}
@endif
<section class="section pt-50 pb-50 bg-lightgray">
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






<section class="section pt-50 pb-50">
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



<style>
    .title-section {
    padding: 40px 0;
    text-align: center;
}
.title-section h2 {
    font-family: 'Roboto Slab', serif;
    font-size: 30px;
    color: #1b7b57;
    text-transform: uppercase;
}
.title-section span {
    width: 300px;
    height: 1px;
    background-color: #c2c2c2;
    display: inline-block;
}
.title-section p {
    font-size: 16px;
    font-weight: 400;
    padding-top: 10px;
}
.news .news-home-content {
    letter-spacing: -1em;
    padding-bottom: 40px;
}
.news-home-content .item-news {
    display: inline-block;
    box-sizing: border-box;
    letter-spacing: normal;
    width: 33.33%;
    vertical-align: top;
    padding: 0px 12px;
}
.title-item-news {
    text-align: center;
    padding-bottom: 10px;
}
.title-item-news span {
    width: 13%;
    height: 1px;
    display: inline-block;
    background-color: #7a7a7a;
    vertical-align: 6px;
}
.title-item-news h4 {
    text-align: center;
    display: inline-block;
}
.title-item-news h4 a {
    font-size: 18px;
    color: #7a7a7a;
    text-transform: uppercase;
    font-weight: normal;
}
.news-home-content .item-news img {
    width: 100%;
    height: 194px;
}
.news-home-content .primary-item-news-height {
    margin-bottom: 20px;
}
.primary-item-news h3 {
    font-size: 20px;
    padding: 10px 0;
   /*  height: 41px; */
    overflow: hidden;
    margin-bottom: 5px;
}
.primary-item-news .date {
    padding: 0;
}
.primary-item-news p {
    padding: 0;
    margin-bottom: 10px;
}
.detai {
    text-align: center;
    margin-bottom: 30px;
}
.services-detail {
    text-decoration: none;
    font-size: 16px;
    padding: 8px 25px;
    background-color: #ff6469;
    border-radius: 20px;
    color: #fff;
}
.primary-item-news-more:first-of-type {
    border-top: 1px solid #c7c7c7 !important;
    padding-top: 15px;
}
</style>

<section class="section pt-50 pb-50  bg-lightgray">
    <div class="container">
        <div class="title-section">
            <h2>Tin tức</h2>
            <span></span>
            <p>Những tin tức được cập nhật hàng ngày tại Bệnh viện đa khoa Hòa Bình</p>
        </div>
        <div class="news-home-content">
        @if (is_plugin_active('blog'))
            @foreach (get_all_categories(['categories.status' => 1, 'categories.parent_id' => 0, 'featured' => 1]) as $category)
                @php
                    $allRelatedCategoryIds = array_unique(array_merge(app(\Botble\Blog\Repositories\Interfaces\CategoryInterface::class)->getAllRelatedChildrenIds($category), [$category->id]));

                    $post_categories = app(\Botble\Blog\Repositories\Interfaces\PostInterface::class)->getByCategory($allRelatedCategoryIds, 0, 6);
                @endphp
                <div class="item-news">
                    <div class="title-item-news">
                        <span></span>
                        <h4><a href="{{ route('public.single', $category->slug) }}">{{ $category->name }}</a></h4>
                        <span></span>
                    </div>
                    <div class="primary-item-news">
                        @foreach($post_categories as $post_category)
                            @if ($loop->index < 1)
                            <a href="{{ route('public.single', $post_category->slug) }}">
                                <img width="640" height="401" src="{{ get_object_image($post_category->image) }}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" />
                            </a>
                            <div class="primary-item-news-height">
                                <h3><a href="{{ route('public.single', $post_category->slug) }}">{{ $post_category->name }}</a></h3>
                                <p class="date">{{ date('d/m/Y',strtotime($post_category->created_at)) }}</p>
                                <p>{{ $post_category->description }}</p>
                            </div>
                            <div class="detai">
                                <a class="services-detail" href="{{ route('public.single', $post_category->slug) }}">Chi tiết</a>
                            </div>
                            @endif
                        @endforeach
                        
                        @foreach($post_categories as $post_category)
                            @if ($loop->index >= 3)
                            
                             <p class="primary-item-news-more">
                                <a href="{{ route('public.single', $post_category->slug) }}">{{ $post_category->name }}</a>
                            </p>
                            @endif
                        @endforeach
                    </div>
                </div>
            @endforeach
        @endif
        </div>
    </div>
</section>


@if (function_exists('render_galleries'))
    {!! render_galleries(8) !!}
@endif



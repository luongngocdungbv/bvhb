

<section class="section pt-50 pb-50 bg-lightgray">
        <div class="container">
            <div class="row">
                <div class="page-content">
                    <div class="post-group post-group--single">
                        <div class="post-group__header">
                            <h3 class="post-group__title">{{ __('Best for you') }}</h3>
                        </div>
                        <div class="post-group__content">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <article class="post post__vertical post__vertical--single post__vertical--simple">
                                        <div class="post__thumbnail">
                                            <img src="{{ get_object_image($chuyengia->image, 'medium') }}" alt="{{ $chuyengia->name }}"><a href="{{ route('public.single', $chuyengia->slug) }}" class="post__overlay"></a>
                                        </div>
                                        <div class="post__content-wrap">
                                            <header class="post__header">
                                                <h3 class="post__title"><a href="{{ route('public.single', $chuyengia->slug) }}">{{$chuyengia->name}}</a></h3>
                                               
                                            </header>
                                            <div class="post__content">
                                                <p data-number-line="2">{{ $chuyengia->description }}</p>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

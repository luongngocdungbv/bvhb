

<section class="section pt-50 pb-50 bg-lightgray">
        <div class="container">
            <div class="row">
                <div class="page-content">
                    <div class="post-group post-group--single">
                        <div class="post-group__header">
                            
                            <div class="title-section">
                                <h2>{{ $chuyengia->chucvu }}</h2>
                                <span></span>
                            </div>
                        </div>
                        <div class="post-group__content">
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    
                                    <div class="item-expert">
                                        <a href="{{ route('public.single', $chuyengia->slug) }}">
                                            <img src="{{ get_object_image($chuyengia->image, 'medium') }}" alt="{{ $chuyengia->name }}" width="342" height="300" style="width:100%;" style="object-fit: cover">
                                        </a>
                                        <div class="name-doctor">
                                            <a href="{{ route('public.single', $chuyengia->slug) }}"><p><span>{{$chuyengia->hocvan}}</span> {{$chuyengia->name}}</p></a>
                                        </div>
                                        <!-- <div class="item-expert-text">
                                            <h4><a href="{{ route('public.single', $chuyengia->slug) }}">{{ $chuyengia->chucvu }}</a></h4>
                                            <p></p>
                                        </div> -->
                                    </div>
                                </div>
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                    <div class="expert-container home-expert-container">
                                        
                                        <div class="item-expert-details">
                                            <div class="item-expert-details-title">
                                                <h4>{{$chuyengia->hocvan}}</h4>
                                                <h2>{{$chuyengia->name}}</h2>
                                                <h3>{{ $chuyengia->description }}</h3>
                                                
                                            </div>
                                            <div class="item-expert-details-content">
                                               {!! $chuyengia->content !!}                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

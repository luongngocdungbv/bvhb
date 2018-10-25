                
<section  class="section page-intro-chuyengia pt-20 pb-20 ">
    <div class="title-section">
        <h2>{{trans('plugins.chuyengia::chuyengia.chucvu_hello')}}</h2>
        <span></span>
        <p>{{trans('plugins.chuyengia::chuyengia.chucvu_intro')}}</p>
    </div>
</section>


 



<div class="container chuyengia_custom">
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#ngoaivien">Chuyên Gia Ngoại Viện</a></li>
    <li><a data-toggle="tab" href="#noivien">Đội Ngũ Nhân Viên</a></li>
   
  </ul>

  <div class="tab-content">
    <div id="ngoaivien" class="tab-pane fade in active">
        <div class="page-content">
            <article class="post post--single">
                <div class="post__content">
                    @if (isset($chuyengias) && !$chuyengias->isEmpty())
                        <div class="gallery-wrap">
                            <div class="container">
                            @foreach ($chuyengias as $chuyengia)
                                <div class="item-expert col-lg-4 col-xs-12 col-sm-6  col-md-6">
                                    <a href="{{ route('public.single', $chuyengia->slug) }}">
                                        <img src="@if($chuyengia->image == '')/vendor/core/images/favicon.png @else {{ get_object_image($chuyengia->image, 'medium') }}@endif " alt="{{ $chuyengia->name }}" width="342" height="300" style="width:100%;" class="image_chuyengia" style="object-fit: cover">
                                    </a>
                                    <div class="name-doctor">
                                        <a href="{{ route('public.single', $chuyengia->slug) }}"><p><span>{{ $chuyengia->hocvan }}</span> {{ $chuyengia->name }}</p></a>
                                    </div>
                                    <div class="item-expert-text">
                                    <h4><a href="{{ route('public.single', $chuyengia->slug) }}">{{ $chuyengia->chucvu }}</a></h4>
                                   <!--  <p>{!! string_limit_words($chuyengia->content, 80) }}</p>  -->
                                    </div>
                                </div>
                            @endforeach
                            </div>
                        </div>
                    @endif
                </div>
            </article>
        </div>

    </div>
    <div id="noivien" class="tab-pane fade">
        <div class="page-content">
            <article class="post post--single">
                <div class="post__content">
                    @if (isset($noiviens) && !$noiviens->isEmpty())
                        <div class="gallery-wrap">
                            <div class="container">
                            @foreach ($noiviens as $noivien)
                                <div class="item-expert col-lg-4 col-xs-12 col-sm-6  col-md-6">
                                    <a href="{{ route('public.single', $noivien->slug) }}">
                                        <img src="@if($noivien->image == '')/vendor/core/images/favicon.png @else {{ get_object_image($noivien->image, 'medium') }}@endif " alt="{{ $noivien->name }}" width="342" height="300" style="width:100%;"  class="image_chuyengia" style="object-fit: cover">
                                    </a>
                                    <div class="name-doctor">
                                        <a href="{{ route('public.single', $noivien->slug) }}"><p><span>{{ $noivien->hocvan }}</span> {{ $noivien->name }}</p></a>
                                    </div>
                                    <div class="item-expert-text">
                                    <h4><a href="{{ route('public.single', $noivien->slug) }}">{{ $noivien->chucvu }}</a></h4>
                                   <!--  <p>{!! string_limit_words($noivien->content, 80) }}</p>  -->
                                    </div>
                                </div>
                            @endforeach
                            </div>
                        </div>
                    @endif
                </div>
            </article>
        </div>
    </div>  
  </div>
</div>
<div class="pagination_css">
    {{$chuyengias->links()}}
</div>
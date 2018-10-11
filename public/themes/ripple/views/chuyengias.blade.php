                
<section  class="section page-intro-chuyengia pt-100 pb-100 ">
    <div class="title-section">
        <h2>{{trans('plugins.chuyengia::chuyengia.chucvu_hello')}}</h2>
        <span></span>
        <p>{{trans('plugins.chuyengia::chuyengia.chucvu_intro')}}</p>
    </div>
</section>



               
                <div class="page-content">

                    <article class="post post--single">

                        <div class="post__content">
                            @if (isset($chuyengias) && !$chuyengias->isEmpty())

                                <div class="gallery-wrap">

                                    <div class="container">
                                   
                    
                                    @foreach ($chuyengias as $chuyengia)
										
                                        <div class="item-expert col-lg-4">

                                            <a href="{{ route('public.single', $chuyengia->slug) }}"><img src="@if($chuyengia->image == '')/uploads/1/def-no-image.png @else {{ get_object_image($chuyengia->image, 'medium') }}@endif " alt="{{ $chuyengia->name }}" width="342" height="300" style="width:100%;"></a>

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

                {{$chuyengias->links()}}
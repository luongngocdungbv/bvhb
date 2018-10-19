                
<section  class="section page-intro-chuyengia pt-20 pb-20 ">
    <div class="title-section"> 
        <h2>{{trans('plugins.danhmucbvhb::danhmucbvhb.danhmuc_hello')}}</h2>
        <span></span>
        <p>{!!trans('plugins.danhmucbvhb::danhmucbvhb.danhmuc_intro')!!}</p>
    </div>
</section>         
<div class="page-content">
    <article class="post post--single">
        <div class="post__content">
            @if (isset($danhmucbvhbs) && !$danhmucbvhbs->isEmpty())
                <div class="gallery-wrap">
                    <div class="container">
                        <table class="table table-striped">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col" class="text-center"><b>#</b></th>
                              <th scope="col" class="text-left"><b>Tên Danh Mục</b></th>
                              <th scope="col" class="text-center"><b>Giá Bảo Hiểm</b></th>
                              <th scope="col" class="text-center"><b>Cập Nhật</b></th>
                            </tr>
                          </thead>
                          <tbody>
                        @php
                            $i=1;
                        @endphp
                        @foreach ($danhmucbvhbs as $danhmucbvhb)
                            <tr>
                              <th scope="row" class="text-center">{{$i++}}</th>
                              <td class="text-left"><a href="{{ route('public.single', $danhmucbvhb->slug) }}"><span>{{ $danhmucbvhb->name }}</span></a></td>
                              <td class="text-center"><span>{{ $danhmucbvhb->price_cates }}</span></td>
                              <td class="text-center">(loadding...)</td>
                            </tr>
                        @endforeach
                          </tbody>
                        </table>
                    </div>
                </div>
            @endif
        </div>
    </article>
</div>
<div class="pagination_css">
    {{$danhmucbvhbs->links()}}
</div>

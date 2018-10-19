<div class="gallery-wrap">
   @foreach ($menu_nodes as $key => $row)
    <div class="gallery-item">
        <div class="img-wrap">
            <a href="{{ $row->getRelated()->url }}"><img src="@if($row->image == true){{ $row->image }}@else {{ url(theme_option('logo')) }} @endif" alt="{{ $row->getRelated()->name }}"></a>
        </div>
        <div class="gallery-text">
            <a href="{{ $row->getRelated()->url }}">
                <div class="gallery-text_title">
                    <h3>{{ $row->getRelated()->name }}</h3>
                    <div class="mask {{ $row->css_class }}"></div>
                </div>
            </a>
        </div>
    </div>
    @endforeach
</div>
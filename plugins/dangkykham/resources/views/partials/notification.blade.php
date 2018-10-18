<li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
    <a href="javascript:;" class="dropdown-toggle dropdown-header-name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-briefcase-medical"></i>
        <span class="badge badge-default"> {{ count($dangkykhams) }} </span>
    </a>
    <ul class="dropdown-menu dropdown-menu-right">
        <li class="external">
            <h3>{!! trans('plugins.dangkykham::dangkykham.new_msg_notice', ['count' => count($dangkykhams)]) !!}</h3>
            <a href="{{ route('dangkykhams.list') }}">{{ trans('plugins.dangkykham::dangkykham.view_all') }}</a>
        </li>
        <li>
            <ul class="dropdown-menu-list scroller" style="height: {{ count($dangkykhams) * 70 }}px;" data-handle-color="#637283">
                @foreach($dangkykhams as $dangkykham)
                    <li>
                        <a href="{{ route('dangkykhams.edit', $dangkykham->id) }}">
                            <span class="photo">
                                <img src="{{ url(config('core.acl.general.avatar.default')) }}" class="rounded-circle" alt="{{ $dangkykham->name }}">
                            </span>
                            <span class="subject"><span class="from"> {{ $dangkykham->name }} </span><span class="time">{{ Carbon\Carbon::parse($dangkykham->created_at)->toDateTimeString() }} </span></span>
                            <span class="message"> {{ $dangkykham->phone }} - {{ $dangkykham->email }} </span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </li>
    </ul>
</li>
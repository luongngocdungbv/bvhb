<li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
    <a href="javascript:;" class="dropdown-toggle dropdown-header-name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-heartbeat"></i>
        <span class="badge badge-default"> {{ count($dangkylaymaus) }} </span>
    </a>
    <ul class="dropdown-menu dropdown-menu-right">
        <li class="external">
            <h3>{!! trans('plugins.dangkylaymau::dangkylaymau.new_msg_notice', ['count' => count($dangkylaymaus)]) !!}</h3>
            <a href="{{ route('dangkylaymaus.list') }}">{{ trans('plugins.dangkylaymau::dangkylaymau.view_all') }}</a>
        </li>
        <li>
            <ul class="dropdown-menu-list scroller" style="height: {{ count($dangkylaymaus) * 70 }}px;" data-handle-color="#637283">
                @foreach($dangkylaymaus as $dangkylaymau)
                    <li>
                        <a href="{{ route('dangkylaymaus.edit', $dangkylaymau->id) }}">
                            <span class="photo">
                                <img src="{{ url(config('core.acl.general.avatar.default')) }}" class="rounded-circle" alt="{{ $dangkylaymau->name }}">
                            </span>
                            <span class="subject"><span class="from"> {{ $dangkylaymau->name }} </span><span class="time">{{ Carbon\Carbon::parse($dangkylaymau->created_at)->toDateTimeString() }} </span></span>
                            <span class="message"> {{ $dangkylaymau->phone }} - {{ $dangkylaymau->email }} </span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </li>
    </ul>
</li>
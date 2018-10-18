@if ($dangkylaymau)
    <p>{{ trans('plugins.dangkylaymau::dangkylaymau.tables.fullname') }}: {{ $dangkylaymau->name }}</p>
    <p>{{ trans('plugins.dangkylaymau::dangkylaymau.tables.email') }}: <a href="mailto:{{ $dangkylaymau->email }}">{{ $dangkylaymau->email }}</a></p>
    <p>{{ trans('plugins.dangkylaymau::dangkylaymau.tables.phone') }}: <a href="tel:{{ $dangkylaymau->phone }}">{{ $dangkylaymau->phone }}</a></p>
    <p>{{ trans('plugins.dangkylaymau::dangkylaymau.tables.address') }}: {{ $dangkylaymau->address }}</p>
    <p>{{ trans('plugins.dangkylaymau::dangkylaymau.tables.subject') }}: {{ $dangkylaymau->subject }}</p>
    <p>{{ trans('plugins.dangkylaymau::dangkylaymau.tables.content') }}: {{ $dangkylaymau->content }}</p>
@endif

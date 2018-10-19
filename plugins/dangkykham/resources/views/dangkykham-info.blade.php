@if ($dangkykham)
    <p>{{ trans('plugins.dangkykham::dangkykham.tables.fullname') }}: <b>{{ $dangkykham->name }}</b></p>
   <p>{{ trans('plugins.dangkykham::dangkykham.tables.email') }}: <a href="mailto:{{ $dangkykham->email }}">{{ $dangkykham->email }}</a></p>
    <p>{{ trans('plugins.dangkykham::dangkykham.tables.phone') }}: <a href="tel:{{ $dangkykham->phone }}">{{ $dangkykham->phone }}</a></p>
    <p>Ngày Sinh: {{ $dangkykham->ngaysinh }}</p>
    <p>Chuyên khoa: <b>{{ $dangkykham->chonkhoa }}</b></p>
    <p>{{ trans('plugins.dangkykham::dangkykham.tables.address') }}: {{ $dangkykham->address }}</p>
    <p>{{ trans('plugins.dangkykham::dangkykham.tables.subject') }}: {{ $dangkykham->subject }}</p>
    <p>{{ trans('plugins.dangkykham::dangkykham.tables.content') }}: {{ $dangkykham->content }}</p>
@endif

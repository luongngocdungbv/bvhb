@if ($header)
    <h2 class="group-title text-uppercase">{{ $header }}</h2>
@endif
{!! Form::open(['route' => 'public.send.dangkylaymau', 'method' => 'POST']) !!}
@if(session()->has('success_msg') || session()->has('error_msg') || isset($errors))
    @if (session()->has('success_msg'))
        <div class="alert alert-success">
            <p>{{ session('success_msg') }}</p>
        </div>
    @endif
    @if (session()->has('error_msg'))
        <div class="alert alert-danger">
            <p>{{ session('error_msg') }}</p>
        </div>
    @endif
    @if (isset($errors) && count($errors))
        <div class="alert alert-danger">
            @foreach ($errors->all() as $error)
                <p>{{ $error }}</p>
            @endforeach
        </div>
    @endif
@endif

<div class="row">
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkylaymau_name" class="control-label required">{{ trans('plugins.dangkylaymau::dangkylaymau.form_name') }}</label>
            <input type="text" class="form-control" name="name" value="{{ old('name') }}" id="dangkylaymau_name"
                   placeholder="{{ trans('plugins.dangkylaymau::dangkylaymau.form_name') }}">
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkylaymau_email" class="control-label required">{{ trans('plugins.dangkylaymau::dangkylaymau.form_email') }}</label>
            <input type="email" class="form-control" name="email" value="{{ old('email') }}" id="dangkylaymau_email"
                   placeholder="{{ trans('plugins.dangkylaymau::dangkylaymau.form_email') }}">
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkylaymau_address" class="control-label">{{ trans('plugins.dangkylaymau::dangkylaymau.form_address') }}</label>
            <input type="text" class="form-control" name="address" value="{{ old('address') }}" id="dangkylaymau_address"
                   placeholder="{{ trans('plugins.dangkylaymau::dangkylaymau.form_address') }}">
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkylaymau_phone" class="control-label">{{ trans('plugins.dangkylaymau::dangkylaymau.form_phone') }}</label>
            <input type="text" class="form-control" name="phone" value="{{ old('phone') }}" id="dangkylaymau_phone"
                   placeholder="{{ trans('plugins.dangkylaymau::dangkylaymau.form_phone') }}">
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkylaymau_subject" class="control-label">{{ trans('plugins.dangkylaymau::dangkylaymau.form_subject') }}</label>
            <input type="text" class="form-control" name="subject" value="{{ old('subject') }}" id="dangkylaymau_subject"
                   placeholder="{{ trans('plugins.dangkylaymau::dangkylaymau.form_subject') }}">
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
            <label for="dangkylaymau_content" class="control-label required">{{ trans('plugins.dangkylaymau::dangkylaymau.form_message') }}</label>
            <textarea name="content" id="dangkylaymau_content" class="form-control" rows="5" placeholder="{{ trans('plugins.dangkylaymau::dangkylaymau.form_message') }}">{{ old('content') }}</textarea>
        </div>
    </div>
    @if (setting('enable_captcha') && is_plugin_active('captcha'))
        <div class="col-md-12">
            <div class="form-group">
                <label for="dangkylaymau_robot" class="control-label required">{{ trans('plugins.dangkylaymau::dangkylaymau.confirm_not_robot') }}</label>
                {!! Captcha::display('captcha') !!}
                {!! Captcha::script() !!}
            </div>
        </div>
    @endif
    <div class="col-md-12">
        <div class="form-group"><p>{!! trans('plugins.dangkylaymau::dangkylaymau.required_field') !!}</p></div>
    </div>
</div>
<div class="form-group text-right">
    <button type="submit" class="btn btn-primary cyan text">{{ trans('plugins.dangkylaymau::dangkylaymau.send_btn') }}</button>
</div>
{!! Form::close() !!}

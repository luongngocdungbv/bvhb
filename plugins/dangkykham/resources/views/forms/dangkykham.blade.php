@if ($header)
    <h2 class="group-title text-uppercase">{{ $header }}</h2>
@endif
{!! Form::open(['route' => 'public.send.dangkykham', 'method' => 'POST']) !!}
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
            <label for="dangkykham_name" class="control-label required">{{ trans('plugins.dangkykham::dangkykham.form_name') }}</label>
            <input type="text" class="form-control" name="name" value="{{ old('name') }}" id="dangkykham_name"
                   placeholder="{{ trans('plugins.dangkykham::dangkykham.form_name') }}">
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkykham_email" class="control-label required">{{ trans('plugins.dangkykham::dangkykham.form_email') }}</label>
            <input type="email" class="form-control" name="email" value="{{ old('email') }}" id="dangkykham_email"
                   placeholder="{{ trans('plugins.dangkykham::dangkykham.form_email') }}">
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkykham_address" class="control-label">{{ trans('plugins.dangkykham::dangkykham.form_address') }}</label>
            <input type="text" class="form-control" name="address" value="{{ old('address') }}" id="dangkykham_address"
                   placeholder="{{ trans('plugins.dangkykham::dangkykham.form_address') }}">
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkykham_phone" class="control-label">{{ trans('plugins.dangkykham::dangkykham.form_phone') }}</label>
            <input type="text" class="form-control" name="phone" value="{{ old('phone') }}" id="dangkykham_phone"
                   placeholder="{{ trans('plugins.dangkykham::dangkykham.form_phone') }}">
        </div>
    </div>
    <div class="col-md-6 col-sm-12 col-12">
        <div class="form-group">
            <label for="dangkykham_subject" class="control-label">{{ trans('plugins.dangkykham::dangkykham.form_subject') }}</label>
            <input type="text" class="form-control" name="subject" value="{{ old('subject') }}" id="dangkykham_subject"
                   placeholder="{{ trans('plugins.dangkykham::dangkykham.form_subject') }}">
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
            <label for="dangkykham_content" class="control-label required">{{ trans('plugins.dangkykham::dangkykham.form_message') }}</label>
            <textarea name="content" id="dangkykham_content" class="form-control" rows="5" placeholder="{{ trans('plugins.dangkykham::dangkykham.form_message') }}">{{ old('content') }}</textarea>
        </div>
    </div>
    @if (setting('enable_captcha') && is_plugin_active('captcha'))
        <div class="col-md-12">
            <div class="form-group">
                <label for="dangkykham_robot" class="control-label required">{{ trans('plugins.dangkykham::dangkykham.confirm_not_robot') }}</label>
                {!! Captcha::display('captcha') !!}
                {!! Captcha::script() !!}
            </div>
        </div>
    @endif
    <div class="col-md-12">
        <div class="form-group"><p>{!! trans('plugins.dangkykham::dangkykham.required_field') !!}</p></div>
    </div>
</div>
<div class="form-group text-right">
    <button type="submit" class="btn btn-primary cyan text">{{ trans('plugins.dangkykham::dangkykham.send_btn') }}</button>
</div>
{!! Form::close() !!}

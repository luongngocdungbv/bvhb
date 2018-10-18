<?php

namespace Botble\dangkylaymau\Http\Controllers;

use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Base\Supports\EmailHandler;
use Botble\dangkylaymau\Http\Requests\dangkylaymauRequest;
use Botble\dangkylaymau\Repositories\Interfaces\dangkylaymauInterface;
use Botble\Setting\Supports\SettingStore;
use Exception;
use Illuminate\Routing\Controller;
use MailVariable;

class PublicController extends Controller
{
    /**
     * @var dangkylaymauInterface
     */
    protected $dangkylaymauRepository;

    /**
     * @param dangkylaymauInterface $dangkylaymauRepository
     * @author DGL Custom
     */
    public function __construct(dangkylaymauInterface $dangkylaymauRepository)
    {
        $this->dangkylaymauRepository = $dangkylaymauRepository;
    }

    /**
     * @param dangkylaymauRequest $request
     * @param BaseHttpResponse $response
     * @param SettingStore $setting
     * @param EmailHandler $emailHandler
     * @return BaseHttpResponse
     * @throws \Throwable
     * @author DGL Custom
     */
    public function postSenddangkylaymau(
        dangkylaymauRequest $request,
        BaseHttpResponse $response,
        SettingStore $setting,
        EmailHandler $emailHandler
    ) {
        try {
            $dangkylaymau = $this->dangkylaymauRepository->getModel();
            $dangkylaymau->fill($request->input());
            $this->dangkylaymauRepository->createOrUpdate($dangkylaymau);

            if ($setting->get('plugins_dangkylaymau_notice_status')) {
                MailVariable::setModule(dangkylaymau_MODULE_SCREEN_NAME)
                    ->setVariableValues([
                        'dangkylaymau_name' => $dangkylaymau->name,
                        'dangkylaymau_subject' => $dangkylaymau->subject,
                        'dangkylaymau_email' => $dangkylaymau->email,
                        'dangkylaymau_phone' => $dangkylaymau->phone,
                        'dangkylaymau_address' => $dangkylaymau->address,
                        'dangkylaymau_content' => $dangkylaymau->content,
                    ]);

                $content = get_setting_email_template_content('plugins', 'dangkylaymau', 'notice');

                $emailHandler->send($content, $setting->get('plugins_dangkylaymau_notice_subject', config('plugins.dangkylaymau.email.templates.notice.subject')));
            }

            return $response->setMessage(trans('plugins.dangkylaymau::dangkylaymau.email.success'));
        } catch (Exception $ex) {
            info($ex->getMessage());
            return $response
                ->setError()
                ->setMessage(trans('plugins.dangkylaymau::dangkylaymau.email.failed'));
        }
    }
}

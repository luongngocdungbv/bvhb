<?php

namespace Botble\Dangkykham\Http\Controllers;

use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Base\Supports\EmailHandler;
use Botble\Dangkykham\Http\Requests\DangkykhamRequest;
use Botble\Dangkykham\Repositories\Interfaces\DangkykhamInterface;
use Botble\Setting\Supports\SettingStore;
use Exception;
use Illuminate\Routing\Controller;
use MailVariable;

class PublicController extends Controller
{
    /**
     * @var DangkykhamInterface
     */
    protected $dangkykhamRepository;

    /**
     * @param DangkykhamInterface $dangkykhamRepository
     * @author DGL Custom
     */
    public function __construct(DangkykhamInterface $dangkykhamRepository)
    {
        $this->dangkykhamRepository = $dangkykhamRepository;
    }

    /**
     * @param DangkykhamRequest $request
     * @param BaseHttpResponse $response
     * @param SettingStore $setting
     * @param EmailHandler $emailHandler
     * @return BaseHttpResponse
     * @throws \Throwable
     * @author DGL Custom
     */
    public function postSendDangkykham(
        DangkykhamRequest $request,
        BaseHttpResponse $response,
        SettingStore $setting,
        EmailHandler $emailHandler
    ) {
        try {
            $dangkykham = $this->dangkykhamRepository->getModel();
            $dangkykham->fill($request->input());
            $this->dangkykhamRepository->createOrUpdate($dangkykham);

            if ($setting->get('plugins_dangkykham_notice_status')) {
                MailVariable::setModule(DANGKYKHAM_MODULE_SCREEN_NAME)
                    ->setVariableValues([
                        'dangkykham_name' => $dangkykham->name,
                        'dangkykham_subject' => $dangkykham->subject,
                        'dangkykham_email' => $dangkykham->email,
                        'dangkykham_phone' => $dangkykham->phone,
                        'dangkykham_address' => $dangkykham->address,
                        'dangkykham_content' => $dangkykham->content,
                    ]);

                $content = get_setting_email_template_content('plugins', 'dangkykham', 'notice');

                $emailHandler->send($content, $setting->get('plugins_dangkykham_notice_subject', config('plugins.dangkykham.email.templates.notice.subject')));
            }

            return $response->setMessage(trans('plugins.dangkykham::dangkykham.email.success'));
        } catch (Exception $ex) {
            info($ex->getMessage());
            return $response
                ->setError()
                ->setMessage(trans('plugins.dangkykham::dangkykham.email.failed'));
        }
    }
}

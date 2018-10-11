<?php

namespace Botble\Danhmucbvhb\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Danhmucbvhb\Http\Requests\DanhmucbvhbRequest;
use Botble\Danhmucbvhb\Repositories\Interfaces\DanhmucbvhbInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Danhmucbvhb\Tables\DanhmucbvhbTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Danhmucbvhb\Forms\DanhmucbvhbForm;
use Botble\Base\Forms\FormBuilder;

class DanhmucbvhbController extends BaseController
{
    /**
     * @var DanhmucbvhbInterface
     */
    protected $danhmucbvhbRepository;

    /**
     * DanhmucbvhbController constructor.
     * @param DanhmucbvhbInterface $danhmucbvhbRepository
     * @author Sang Nguyen
     */
    public function __construct(DanhmucbvhbInterface $danhmucbvhbRepository)
    {
        $this->danhmucbvhbRepository = $danhmucbvhbRepository;
    }

    /**
     * Display all danhmucbvhbs
     * @param DanhmucbvhbTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     * @throws \Throwable
     */
    public function getList(DanhmucbvhbTable $table)
    {

        page_title()->setTitle(trans('plugins.danhmucbvhb::danhmucbvhb.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.danhmucbvhb::danhmucbvhb.create'));

        return $formBuilder->create(DanhmucbvhbForm::class)->renderForm();
    }

    /**
     * Insert new Danhmucbvhb into database
     *
     * @param DanhmucbvhbRequest $request
     * @return BaseHttpResponse
     * @author Sang Nguyen
     */
    public function postCreate(DanhmucbvhbRequest $request, BaseHttpResponse $response)
    {
        $danhmucbvhb = $this->danhmucbvhbRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(DANHMUCBVHB_MODULE_SCREEN_NAME, $request, $danhmucbvhb));

        return $response
            ->setPreviousUrl(route('danhmucbvhb.list'))
            ->setNextUrl(route('danhmucbvhb.edit', $danhmucbvhb->id))
            ->setMessage(trans('core.base::notices.create_success_message'));
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param Request $request
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getEdit($id, FormBuilder $formBuilder, Request $request)
    {
        $danhmucbvhb = $this->danhmucbvhbRepository->findOrFail($id);

        event(new BeforeEditContentEvent(DANHMUCBVHB_MODULE_SCREEN_NAME, $request, $danhmucbvhb));

        page_title()->setTitle(trans('plugins.danhmucbvhb::danhmucbvhb.edit') . ' #' . $id);

        return $formBuilder->create(DanhmucbvhbForm::class)->setModel($danhmucbvhb)->renderForm();
    }

    /**
     * @param $id
     * @param DanhmucbvhbRequest $request
     * @return BaseHttpResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, DanhmucbvhbRequest $request, BaseHttpResponse $response)
    {
        $danhmucbvhb = $this->danhmucbvhbRepository->findOrFail($id);

        $danhmucbvhb->fill($request->input());

        $this->danhmucbvhbRepository->createOrUpdate($danhmucbvhb);

        event(new UpdatedContentEvent(DANHMUCBVHB_MODULE_SCREEN_NAME, $request, $danhmucbvhb));

        return $response
            ->setPreviousUrl(route('danhmucbvhb.list'))
            ->setMessage(trans('core.base::notices.update_success_message'));
    }

    /**
     * @param $id
     * @param Request $request
     * @return BaseHttpResponse
     * @author Sang Nguyen
     */
    public function getDelete(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $danhmucbvhb = $this->danhmucbvhbRepository->findOrFail($id);

            $this->danhmucbvhbRepository->delete($danhmucbvhb);

            event(new DeletedContentEvent(DANHMUCBVHB_MODULE_SCREEN_NAME, $request, $danhmucbvhb));

            return $response->setMessage(trans('core.base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage(trans('core.base::notices.cannot_delete'));
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author Sang Nguyen
     */
    public function postDeleteMany(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $danhmucbvhb = $this->danhmucbvhbRepository->findOrFail($id);
            $this->danhmucbvhbRepository->delete($danhmucbvhb);
            event(new DeletedContentEvent(DANHMUCBVHB_MODULE_SCREEN_NAME, $request, $danhmucbvhb));
        }

        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }
}

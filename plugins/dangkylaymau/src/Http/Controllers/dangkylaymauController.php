<?php

namespace Botble\dangkylaymau\Http\Controllers;

use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\dangkylaymau\Forms\dangkylaymauForm;
use Botble\dangkylaymau\Tables\dangkylaymauTable;
use Botble\dangkylaymau\Repositories\Interfaces\dangkylaymauInterface;
use Exception;
use Illuminate\Http\Request;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;

class dangkylaymauController extends BaseController
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
     * @param dangkylaymauTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author DGL Custom
     * @throws \Throwable
     */
    public function getList(dangkylaymauTable $dataTable)
    {
        page_title()->setTitle(trans('plugins.dangkylaymau::dangkylaymau.menu'));

        return $dataTable->renderTable();
    }

    /**
     * @param $id
     * @param FormBuilder $formBuilder
     * @return string
     * @author DGL Custom
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.dangkylaymau::dangkylaymau.edit'));

        $dangkylaymau = $this->dangkylaymauRepository->findById($id);

        $dangkylaymau->is_read = true;
        $this->dangkylaymauRepository->createOrUpdate($dangkylaymau);

        return $formBuilder->create(dangkylaymauForm::class)->setModel($dangkylaymau)->renderForm();
    }

    /**
     * @param $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author DGL Custom
     */
    public function postEdit($id, Request $request, BaseHttpResponse $response)
    {
        $dangkylaymau = $this->dangkylaymauRepository->findById($id);

        if (!$request->input('is_read')) {
            $dangkylaymau->is_read = false;
        } else {
            $dangkylaymau->is_read = true;
        }

        $this->dangkylaymauRepository->createOrUpdate($dangkylaymau);
        event(new UpdatedContentEvent(dangkylaymau_MODULE_SCREEN_NAME, $request, $dangkylaymau));

        return $response
            ->setPreviousUrl(route('dangkylaymaus.list'))
            ->setMessage(trans('core.base::notices.update_success_message'));
    }

    /**
     * @param $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author DGL Custom
     */
    public function getDelete($id, Request $request, BaseHttpResponse $response)
    {
        try {
            $dangkylaymau = $this->dangkylaymauRepository->findById($id);
            $this->dangkylaymauRepository->delete($dangkylaymau);
            event(new DeletedContentEvent(dangkylaymau_MODULE_SCREEN_NAME, $request, $dangkylaymau));
            return $response->setMessage(trans('plugins.dangkylaymau::dangkylaymau.deleted'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage(trans('plugins.dangkylaymau::dangkylaymau.cannot_delete'));
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author DGL Custom
     */
    public function postDeleteMany(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('plugins.dangkylaymau::dangkylaymau.notices.no_select'));
        }

        foreach ($ids as $id) {
            $dangkylaymau = $this->dangkylaymauRepository->findOrFail($id);
            $this->dangkylaymauRepository->delete($dangkylaymau);
            event(new DeletedContentEvent(dangkylaymau_MODULE_SCREEN_NAME, $request, $dangkylaymau));
        }

        return $response
            ->setData($request->input('status'))
            ->setMessage(trans('plugins.dangkylaymau::dangkylaymau.deleted'));
    }
}

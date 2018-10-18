<?php

namespace Botble\Dangkykham\Http\Controllers;

use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Dangkykham\Forms\DangkykhamForm;
use Botble\Dangkykham\Tables\DangkykhamTable;
use Botble\Dangkykham\Repositories\Interfaces\DangkykhamInterface;
use Exception;
use Illuminate\Http\Request;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;

class DangkykhamController extends BaseController
{

    /**
     * @var DangkykhamInterface
     */
    protected $dangkykhamRepository;

    /**
     * @param dangkykhamInterface $dangkykhamRepository
     * @author DGL Custom
     */
    public function __construct(DangkykhamInterface $dangkykhamRepository)
    {
        $this->dangkykhamRepository = $dangkykhamRepository;
    }

    /**
     * @param DangkykhamTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author DGL Custom
     * @throws \Throwable
     */
    public function getList(DangkykhamTable $dataTable)
    {
        page_title()->setTitle(trans('plugins.dangkykham::dangkykham.menu'));

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
        page_title()->setTitle(trans('plugins.dangkykham::dangkykham.edit'));

        $dangkykham = $this->dangkykhamRepository->findById($id);

        $dangkykham->is_read = true;
        $this->dangkykhamRepository->createOrUpdate($dangkykham);

        return $formBuilder->create(DangkykhamForm::class)->setModel($dangkykham)->renderForm();
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
        $dangkykham = $this->dangkykhamRepository->findById($id);

        if (!$request->input('is_read')) {
            $dangkykham->is_read = false;
        } else {
            $dangkykham->is_read = true;
        }

        $this->dangkykhamRepository->createOrUpdate($dangkykham);
        event(new UpdatedContentEvent(DANGKYKHAM_MODULE_SCREEN_NAME, $request, $dangkykham));

        return $response
            ->setPreviousUrl(route('dangkykhams.list'))
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
            $dangkykham = $this->dangkykhamRepository->findById($id);
            $this->dangkykhamRepository->delete($dangkykham);
            event(new DeletedContentEvent(DANGKYKHAM_MODULE_SCREEN_NAME, $request, $dangkykham));
            return $response->setMessage(trans('plugins.dangkykham::dangkykham.deleted'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage(trans('plugins.dangkykham::dangkykham.cannot_delete'));
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
                ->setMessage(trans('plugins.dangkykham::dangkykham.notices.no_select'));
        }

        foreach ($ids as $id) {
            $dangkykham = $this->dangkykhamRepository->findOrFail($id);
            $this->dangkykhamRepository->delete($dangkykham);
            event(new DeletedContentEvent(DANGKYKHAM_MODULE_SCREEN_NAME, $request, $dangkykham));
        }

        return $response
            ->setData($request->input('status'))
            ->setMessage(trans('plugins.dangkykham::dangkykham.deleted'));
    }
}

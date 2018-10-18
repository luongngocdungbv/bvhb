<?php

namespace Botble\Chuyengia\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Chuyengia\Http\Requests\ChuyengiaRequest;
use Botble\Chuyengia\Repositories\Interfaces\ChuyengiaInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Chuyengia\Tables\ChuyengiaTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Chuyengia\Forms\ChuyengiaForm;
use Botble\Base\Forms\FormBuilder;

class ChuyengiaController extends BaseController
{
    /**
     * @var ChuyengiaInterface
     */
    protected $chuyengiaRepository;

    /**
     * ChuyengiaController constructor.
     * @param ChuyengiaInterface $chuyengiaRepository
     * @author DGL Custom
     */
    public function __construct(ChuyengiaInterface $chuyengiaRepository)
    {
        $this->chuyengiaRepository = $chuyengiaRepository;
    }

    /**
     * Display all chuyengias
     * @param ChuyengiaTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author DGL Custom
     * @throws \Throwable
     */
    public function getList(ChuyengiaTable $table)
    {

        page_title()->setTitle(trans('plugins.chuyengia::chuyengia.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author DGL Custom
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.chuyengia::chuyengia.create'));

        return $formBuilder->create(ChuyengiaForm::class)->renderForm();
    }

    /**
     * Insert new Chuyengia into database
     *
     * @param ChuyengiaRequest $request
     * @return BaseHttpResponse
     * @author DGL Custom
     */
    public function postCreate(ChuyengiaRequest $request, BaseHttpResponse $response)
    {
        $chuyengia = $this->chuyengiaRepository->createOrUpdate(array_merge($request->input(), [
            'featured' => $request->input('featured', false),
        ]));



        event(new CreatedContentEvent(CHUYENGIA_MODULE_SCREEN_NAME, $request, $chuyengia));

        return $response
            ->setPreviousUrl(route('chuyengia.list'))
            ->setNextUrl(route('chuyengia.edit', $chuyengia->id))
            ->setMessage(trans('core.base::notices.create_success_message'));
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param Request $request
     * @param FormBuilder $formBuilder
     * @return string
     * @author DGL Custom
     */
    public function getEdit($id, FormBuilder $formBuilder, Request $request)
    {
        $chuyengia = $this->chuyengiaRepository->findOrFail($id);

        event(new BeforeEditContentEvent(CHUYENGIA_MODULE_SCREEN_NAME, $request, $chuyengia));

        page_title()->setTitle(trans('plugins.chuyengia::chuyengia.edit') . ' #' . $id);

        return $formBuilder->create(ChuyengiaForm::class)->setModel($chuyengia)->renderForm();
    }

    /**
     * @param $id
     * @param ChuyengiaRequest $request
     * @return BaseHttpResponse
     * @author DGL Custom
     */
    public function postEdit($id, ChuyengiaRequest $request, BaseHttpResponse $response)
    {
        $chuyengia = $this->chuyengiaRepository->findOrFail($id);

        $chuyengia->fill($request->input());
        $chuyengia->featured = $request->input('featured', false);

        $this->chuyengiaRepository->createOrUpdate($chuyengia);

        event(new UpdatedContentEvent(CHUYENGIA_MODULE_SCREEN_NAME, $request, $chuyengia));

        return $response
            ->setPreviousUrl(route('chuyengia.list'))
            ->setMessage(trans('core.base::notices.update_success_message'));
    }

    /**
     * @param $id
     * @param Request $request
     * @return BaseHttpResponse
     * @author DGL Custom
     */
    public function getDelete(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $chuyengia = $this->chuyengiaRepository->findOrFail($id);

            $this->chuyengiaRepository->delete($chuyengia);

            event(new DeletedContentEvent(CHUYENGIA_MODULE_SCREEN_NAME, $request, $chuyengia));

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
     * @author DGL Custom
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
            $chuyengia = $this->chuyengiaRepository->findOrFail($id);
            $this->chuyengiaRepository->delete($chuyengia);
            event(new DeletedContentEvent(CHUYENGIA_MODULE_SCREEN_NAME, $request, $chuyengia));
        }

        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }
}

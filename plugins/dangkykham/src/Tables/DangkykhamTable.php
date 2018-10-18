<?php

namespace Botble\Dangkykham\Tables;

use Botble\Dangkykham\Repositories\Interfaces\DangkykhamInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;

class DangkykhamTable extends TableAbstract
{

    /**
     * @var bool
     */
    protected $has_actions = true;

    /**
     * @var bool
     */
    protected $has_filter = true;

    /**
     * TagTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param DangkykhamInterface $DangkykhamRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, DangkykhamInterface $dangkykhamRepository)
    {
        $this->repository = $dangkykhamRepository;
        $this->setOption('id', 'table-dangkykhams');
        parent::__construct($table, $urlGenerator);
    }

    /**
     * Display ajax response.
     *
     * @return \Illuminate\Http\JsonResponse
     * @author DGL Custom
     * @since 2.1
     */
    public function ajax()
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function ($item) {
                return anchor_link(route('dangkykhams.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('core.base.general.date_format.date'));
            })
            ->editColumn('is_read', function ($item) {
                return table_status($item->is_read, [
                    1 => [
                        'class' => 'label-success',
                        'text' => trans('plugins.dangkykham::dangkykham.read'),
                    ],
                    0 => [
                        'class' => 'label-warning',
                        'text' => trans('plugins.dangkykham::dangkykham.unread'),
                    ],
                ]);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, DANGKYKHAM_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('dangkykhams.edit', 'dangkykhams.delete', $item);
            })
            ->escapeColumns([])
            ->make(true);
    }

    /**
     * Get the query object to be processed by datatables.
     *
     * @return \Illuminate\Database\Query\Builder|\Illuminate\Database\Eloquent\Builder
     * @author DGL Custom
     * @since 2.1
     */
    public function query()
    {
        $model = $this->repository->getModel();
        $query = $model
            ->select([
                'dangkykhams.id',
                'dangkykhams.name',
                'dangkykhams.phone',
                'dangkykhams.email',
                'dangkykhams.created_at',
                'dangkykhams.is_read',
            ]);
        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, DANGKYKHAM_MODULE_SCREEN_NAME));
    }

    /**
     * @return array
     * @author DGL Custom
     * @since 2.1
     */
    public function columns()
    {
        return [
            'id' => [
                'name' => 'dangkykhams.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'name' => 'dangkykhams.name',
                'title' => trans('core.base::tables.name'),
                'class' => 'text-left',
            ],
            'phone' => [
                'name' => 'dangkykhams.phone',
                'title' => trans('plugins.dangkykham::dangkykham.tables.phone'),
            ],
            'email' => [
                'name' => 'dangkykhams.email',
                'title' => trans('plugins.dangkykham::dangkykham.tables.email'),
            ],
            'created_at' => [
                'name' => 'dangkykhams.created_at',
                'title' => trans('core.base::tables.created_at'),
                'width' => '100px',
            ],
            'is_read' => [
                'name' => 'dangkykhams.is_read',
                'title' => trans('plugins.dangkykham::dangkykham.form.is_read'),
                'width' => '100px',
            ],
        ];
    }

    /**
     * @return array
     * @author DGL Custom
     * @since 2.1
     */
    public function buttons()
    {
        $buttons = [];
        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, DANGKYKHAM_MODULE_SCREEN_NAME);
    }

    /**
     * @return array
     * @throws \Throwable
     */
    public function bulkActions(): array
    {
        $actions = parent::bulkActions();

        $actions['delete-many'] = view('core.table::partials.delete', [
            'href' => route('dangkykhams.delete.many'),
            'data_class' => get_class($this),
        ]);

        return $actions;
    }

    /**
     * @return mixed
     */
    public function getBulkChanges(): array
    {
        return [
            'dangkykhams.name' => [
                'title' => trans('core.base::tables.name'),
                'type' => 'text',
                'validate' => 'required|max:120',
                'callback' => 'getNames',
            ],
            'dangkykhams.email' => [
                'title' => trans('core.base::tables.email'),
                'type' => 'text',
                'validate' => 'required|max:120',
                'callback' => 'getEmails',
            ],
            'dangkykhams.phone' => [
                'title' => trans('plugins.dangkykham::dangkykham.sender_phone'),
                'type' => 'text',
                'validate' => 'required|max:120',
                'callback' => 'getPhones',
            ],
            'dangkykhams.is_read' => [
                'title' => trans('core.base::tables.status'),
                'type' => 'select',
                'choices' => [
                    0 => trans('plugins.dangkykham::dangkykham.unread'),
                    1 => trans('plugins.dangkykham::dangkykham.read'),
                ],
                'validate' => 'required|in:0,1',
            ],
            'dangkykhams.created_at' => [
                'title' => trans('core.base::tables.created_at'),
                'type' => 'date',
            ],
        ];
    }

    /**
     * @return array
     */
    public function getNames()
    {
        return $this->repository->pluck('dangkykhams.name', 'dangkykhams.id');
    }

    /**
     * @return array
     */
    public function getEmails()
    {
        return $this->repository->pluck('dangkykhams.email', 'dangkykhams.id');
    }

    /**
     * @return array
     */
    public function getPhones()
    {
        return $this->repository->pluck('dangkykhams.phone', 'dangkykhams.id');
    }

    /**
     * @return array
     */
    public function getDefaultButtons()
    {
        return [
            'export',
            'reload',
        ];
    }
}

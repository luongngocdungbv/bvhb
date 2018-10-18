<?php

namespace Botble\dangkylaymau\Tables;

use Botble\dangkylaymau\Repositories\Interfaces\dangkylaymauInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;

class dangkylaymauTable extends TableAbstract
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
     * @param dangkylaymauInterface $dangkylaymauRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, dangkylaymauInterface $dangkylaymauRepository)
    {
        $this->repository = $dangkylaymauRepository;
        $this->setOption('id', 'table-dangkylaymaus');
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
                return anchor_link(route('dangkylaymaus.edit', $item->id), $item->name);
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
                        'text' => trans('plugins.dangkylaymau::dangkylaymau.read'),
                    ],
                    0 => [
                        'class' => 'label-warning',
                        'text' => trans('plugins.dangkylaymau::dangkylaymau.unread'),
                    ],
                ]);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, dangkylaymau_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('dangkylaymaus.edit', 'dangkylaymaus.delete', $item);
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
                'dangkylaymaus.id',
                'dangkylaymaus.name',
                'dangkylaymaus.phone',
                'dangkylaymaus.email',
                'dangkylaymaus.created_at',
                'dangkylaymaus.is_read',
            ]);
        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, dangkylaymau_MODULE_SCREEN_NAME));
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
                'name' => 'dangkylaymaus.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'name' => 'dangkylaymaus.name',
                'title' => trans('core.base::tables.name'),
                'class' => 'text-left',
            ],
            'phone' => [
                'name' => 'dangkylaymaus.phone',
                'title' => trans('plugins.dangkylaymau::dangkylaymau.tables.phone'),
            ],
            'email' => [
                'name' => 'dangkylaymaus.email',
                'title' => trans('plugins.dangkylaymau::dangkylaymau.tables.email'),
            ],
            'created_at' => [
                'name' => 'dangkylaymaus.created_at',
                'title' => trans('core.base::tables.created_at'),
                'width' => '100px',
            ],
            'is_read' => [
                'name' => 'dangkylaymaus.is_read',
                'title' => trans('plugins.dangkylaymau::dangkylaymau.form.is_read'),
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
        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, dangkylaymau_MODULE_SCREEN_NAME);
    }

    /**
     * @return array
     * @throws \Throwable
     */
    public function bulkActions(): array
    {
        $actions = parent::bulkActions();

        $actions['delete-many'] = view('core.table::partials.delete', [
            'href' => route('dangkylaymaus.delete.many'),
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
            'dangkylaymaus.name' => [
                'title' => trans('core.base::tables.name'),
                'type' => 'text',
                'validate' => 'required|max:120',
                'callback' => 'getNames',
            ],
            'dangkylaymaus.email' => [
                'title' => trans('core.base::tables.email'),
                'type' => 'text',
                'validate' => 'required|max:120',
                'callback' => 'getEmails',
            ],
            'dangkylaymaus.phone' => [
                'title' => trans('plugins.dangkylaymau::dangkylaymau.sender_phone'),
                'type' => 'text',
                'validate' => 'required|max:120',
                'callback' => 'getPhones',
            ],
            'dangkylaymaus.is_read' => [
                'title' => trans('core.base::tables.status'),
                'type' => 'select',
                'choices' => [
                    0 => trans('plugins.dangkylaymau::dangkylaymau.unread'),
                    1 => trans('plugins.dangkylaymau::dangkylaymau.read'),
                ],
                'validate' => 'required|in:0,1',
            ],
            'dangkylaymaus.created_at' => [
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
        return $this->repository->pluck('dangkylaymaus.name', 'dangkylaymaus.id');
    }

    /**
     * @return array
     */
    public function getEmails()
    {
        return $this->repository->pluck('dangkylaymaus.email', 'dangkylaymaus.id');
    }

    /**
     * @return array
     */
    public function getPhones()
    {
        return $this->repository->pluck('dangkylaymaus.phone', 'dangkylaymaus.id');
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

<?php

namespace Botble\Dangkykham\Repositories\Eloquent;

use Botble\Dangkykham\Repositories\Interfaces\DangkykhamInterface;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;

class DangkykhamRepository extends RepositoriesAbstract implements DangkykhamInterface
{
    /**
     * @param array $select
     * @return mixed
     * @author DGL Custom
     */
    public function getUnread($select = ['*'])
    {
        $data = $this->model->where('is_read', 0)->select($select)->get();
        $this->resetModel();
        return $data;
    }

    /**
     * @return int
     * @author DGL Custom
     */
    public function countUnread()
    {
        $data = $this->model->where('is_read', 0)->count();
        $this->resetModel();
        return $data;
    }
}

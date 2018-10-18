<?php

namespace Botble\dangkylaymau\Repositories\Eloquent;

use Botble\dangkylaymau\Repositories\Interfaces\dangkylaymauInterface;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;

class dangkylaymauRepository extends RepositoriesAbstract implements dangkylaymauInterface
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

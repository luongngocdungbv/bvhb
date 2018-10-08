<?php

namespace Botble\Chuyengia\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Chuyengia\Repositories\Interfaces\ChuyengiaInterface;

class ChuyengiaRepository extends RepositoriesAbstract implements ChuyengiaInterface
{
    /**
     * @var string
     */
    protected $screen = CHUYENGIA_MODULE_SCREEN_NAME;
}

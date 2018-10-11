<?php

namespace Botble\Danhmucbvhb\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Danhmucbvhb\Repositories\Interfaces\DanhmucbvhbInterface;

class DanhmucbvhbRepository extends RepositoriesAbstract implements DanhmucbvhbInterface
{
    /**
     * @var string
     */
    protected $screen = DANHMUCBVHB_MODULE_SCREEN_NAME;
}

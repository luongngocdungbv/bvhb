<?php

namespace Botble\Chuyengia\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Chuyengia\Repositories\Interfaces\ChuyengiaInterface;

class ChuyengiaCacheDecorator extends CacheAbstractDecorator implements ChuyengiaInterface
{
    /**
     * @var ChuyengiaInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ChuyengiaCacheDecorator constructor.
     * @param ChuyengiaInterface $repository
     * @param CacheInterface $cache
     * @author DGL Custom
     */
    public function __construct(ChuyengiaInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}

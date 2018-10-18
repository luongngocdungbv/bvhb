<?php

namespace Botble\Danhmucbvhb\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Danhmucbvhb\Repositories\Interfaces\DanhmucbvhbInterface;

class DanhmucbvhbCacheDecorator extends CacheAbstractDecorator implements DanhmucbvhbInterface
{
    /**
     * @var DanhmucbvhbInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * DanhmucbvhbCacheDecorator constructor.
     * @param DanhmucbvhbInterface $repository
     * @param CacheInterface $cache
     * @author DGL Custom
     */
    public function __construct(DanhmucbvhbInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}

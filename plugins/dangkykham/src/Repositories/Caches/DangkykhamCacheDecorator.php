<?php

namespace Botble\Dangkykham\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Dangkykham\Repositories\Interfaces\DangkykhamInterface;
use Botble\Support\Services\Cache\CacheInterface;

class DangkykhamCacheDecorator extends CacheAbstractDecorator implements DangkykhamInterface
{

    /**
     * @var DangkykhamInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * DangkykhamCacheDecorator constructor.
     * @param DangkykhamInterface $repository
     * @param CacheInterface $cache
     * @author DGL Custom
     */
    public function __construct(DangkykhamInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }

    /**
     * @param array $select
     * @return mixed
     * @author DGL Custom
     */
    public function getUnread($select = ['*'])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * @return mixed
     * @author DGL Custom
     */
    public function countUnread()
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}

<?php

namespace Botble\dangkylaymau\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\dangkylaymau\Repositories\Interfaces\dangkylaymauInterface;
use Botble\Support\Services\Cache\CacheInterface;

class dangkylaymauCacheDecorator extends CacheAbstractDecorator implements dangkylaymauInterface
{

    /**
     * @var dangkylaymauInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * dangkylaymauCacheDecorator constructor.
     * @param dangkylaymauInterface $repository
     * @param CacheInterface $cache
     * @author DGL Custom
     */
    public function __construct(dangkylaymauInterface $repository, CacheInterface $cache)
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

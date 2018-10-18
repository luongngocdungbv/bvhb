<?php

namespace Botble\dangkylaymau\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface dangkylaymauInterface extends RepositoryInterface
{
    /**
     * @param array $select
     * @return mixed
     * @author DGL Custom
     */
    public function getUnread($select = ['*']);

    /**
     * @return int
     * @author DGL Custom
     */
    public function countUnread();
}

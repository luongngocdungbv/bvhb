<?php

namespace Botble\Blog\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface TagInterface extends RepositoryInterface
{

    /**
     * @return mixed
     * @author DGL Custom
     */
    public function getDataSiteMap();

    /**
     * @param int $limit
     * @return mixed
     * @author DGL Custom
     */
    public function getPopularTags($limit);

    /**
     * @param bool $active
     * @return mixed
     * @author DGL Custom
     */
    public function getAllTags($active = true);
}

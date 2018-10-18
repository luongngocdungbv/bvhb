<?php

namespace Botble\Gallery\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface GalleryInterface extends RepositoryInterface
{

    /**
     * Get all galleries.
     *
     * @return mixed
     * @author DGL Custom
     */
    public function getAll();

    /**
     * @return mixed
     * @author DGL Custom
     */
    public function getDataSiteMap();

    /**
     * @param $limit
     * @author DGL Custom
     */
    public function getFeaturedGalleries($limit);
}

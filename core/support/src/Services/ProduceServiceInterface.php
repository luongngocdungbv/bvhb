<?php

namespace Botble\Support\Services;

use Illuminate\Http\Request;

interface ProduceServiceInterface
{
    /**
     * Execute produce an entity
     *
     * @param Request $request
     * @return mixed
     * @author DGL Custom
     */
    public function execute(Request $request);
}

<?php

namespace Botble\Chuyengia\Models;

use Eloquent;

/**
 * Botble\Chuyengia\Models\Chuyengia
 *
 * @mixin \Eloquent
 */
class Chuyengia extends Eloquent
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'chuyengias';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'status',
    ];
}

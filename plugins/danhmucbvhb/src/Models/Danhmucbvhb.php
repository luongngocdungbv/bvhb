<?php

namespace Botble\Danhmucbvhb\Models;

use Eloquent;
use Botble\ACL\Models\User;
use Botble\Slug\Traits\SlugTrait;
use Venturecraft\Revisionable\RevisionableTrait;
/**
 * Botble\Danhmucbvhb\Models\Danhmucbvhb
 *
 * @mixin \Eloquent
 */
class Danhmucbvhb extends Eloquent
{
    use RevisionableTrait;
    use SlugTrait;
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'danhmucbvhbs';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'image',
        'description',
        'content',
        'status',
    ];

    protected $screen = DANHMUCBVHB_MODULE_SCREEN_NAME;
}

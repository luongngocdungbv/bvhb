<?php

namespace Botble\Chuyengia\Models;

use Eloquent;
use Botble\ACL\Models\User;
use Botble\Slug\Traits\SlugTrait;
use Venturecraft\Revisionable\RevisionableTrait;
/**
 * Botble\Chuyengia\Models\Chuyengia
 *
 * @mixin \Eloquent
 */
class Chuyengia extends Eloquent
{
    use RevisionableTrait;
    use SlugTrait;
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
        'image',
        'description',
        'chucvu',
        'bancovan',
        'chuyenkhoa',
        'hocvan',
        'featured',
        'content',
        'status',
    ];
    /**
     * @var string
     */
    protected $screen = CHUYENGIA_MODULE_SCREEN_NAME;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     * @author DGL Custom
     */
    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }
}

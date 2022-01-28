<?php

namespace App\Containers\AppSection\Tag\Models;

use App\Ship\Parents\Models\Model;
use App\Ship\Parents\Models\WriteModel;

class Tag extends WriteModel
{
    protected $fillable = [
        'name',
        'slug',
    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * A resource key to be used in the serialized responses.
     */
    protected string $resourceKey = 'Tag';
}

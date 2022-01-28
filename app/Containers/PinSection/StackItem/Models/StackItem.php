<?php

namespace App\Containers\PinSection\StackItem\Models;

use App\Ship\Parents\Models\Model;
use App\Ship\Parents\Models\WriteModel;

class StackItem extends WriteModel
{
    protected $fillable = [

    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];


    /**
     * A resource key to be used in the serialized responses.
     */
    protected string $resourceKey = 'StackItem';
}

<?php

namespace App\Containers\PinSection\PinType\Models;

use App\Ship\Parents\Models\Model;

class PinType extends Model
{
    public $timestamps = false;

    protected $fillable = [
        'name', 'description', 'slug'
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
    protected string $resourceKey = 'PinType';
}

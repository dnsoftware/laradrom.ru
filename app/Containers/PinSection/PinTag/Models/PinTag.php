<?php

namespace App\Containers\PinSection\PinTag\Models;

use App\Ship\Parents\Models\Model;

class PinTag extends Model
{
    public $timestamps = false;

    protected $fillable = [
        'pin_id',
        'tag_id',

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
    protected string $resourceKey = 'PinTag';
}

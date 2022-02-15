<?php

namespace App\Containers\UserSection\User\Models;

use App\Ship\Parents\Models\WriteModel;


class LaraUserWrite extends WriteModel
{
    public $timestamps = false;

    protected $table = 'users';

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
    protected string $resourceKey = 'LaraUser';
}

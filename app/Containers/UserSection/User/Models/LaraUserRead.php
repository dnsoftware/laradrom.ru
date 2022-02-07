<?php

namespace App\Containers\UserSection\User\Models;

use App\Ship\Parents\Models\ReadModel;
use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;

class LaraUserRead extends ReadModel implements AuthenticatableContract
{
    use Authenticatable;

    public $timestamps = false;
    protected $table = 'users';
    protected $fillable = [];
    protected $attributes = [];
    protected $hidden = [];
    protected $casts = [];

    /**
     * A resource key to be used in the serialized responses.
     */
    protected string $resourceKey = 'LaraUserRead';
}

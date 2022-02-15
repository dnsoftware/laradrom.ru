<?php

namespace App\Containers\PinSection\PinType\Models;

use App\Ship\Parents\Models\WriteModel;

/**
 * Модель для записи (Commands в терминах CQRS)
 * PinType без суффикса 'Write' потому что допустимы операции чтения, когда этого нельзя избежать
 * во Write модели нет отношений
 */
class PinTypeWrite extends WriteModel
{
    public $timestamps = false;

    protected $table = 'pin_types';

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

<?php

namespace App\Containers\PinSection\PinType\Models;

use App\Ship\Parents\Models\ReadModel;
use App\Ship\Parents\Models\WriteModel;

/**
 * Модель для чтения (Queries в терминах CQRS)
 * операции записи недопустимы (блокированы на уровне объекта)
 * В Read модели поле $fillable пустое
 */
class PinTypeRead extends ReadModel
{
    public $timestamps = false;

    protected $table = 'pin_types';

    protected $fillable = [];

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

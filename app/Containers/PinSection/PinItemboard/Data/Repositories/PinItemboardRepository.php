<?php

namespace App\Containers\PinSection\PinItemboard\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

class PinItemboardRepository extends Repository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];
}

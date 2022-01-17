<?php

namespace App\Containers\PinSection\PinType\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

class PinTypeRepository extends Repository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];
}

<?php

namespace App\Containers\PinSection\PinItemMain\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

class PinItemMainRepository extends Repository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];
}

<?php

namespace App\Containers\PinSection\PinItem\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

class PinItemRepository extends Repository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];
}


<?php

namespace App\Containers\PinSection\PinBoard\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

class PinBoardRepository extends Repository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];
}

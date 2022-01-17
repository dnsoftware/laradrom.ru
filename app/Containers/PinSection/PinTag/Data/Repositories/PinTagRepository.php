<?php

namespace App\Containers\PinSection\PinTag\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

class PinTagRepository extends Repository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];
}

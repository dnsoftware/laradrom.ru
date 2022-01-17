<?php

namespace App\Containers\PinSection\StackItem\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

class StackItemRepository extends Repository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];
}

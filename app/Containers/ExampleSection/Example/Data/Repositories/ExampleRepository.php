<?php

namespace App\Containers\ExampleSection\Example\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

class ExampleRepository extends Repository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];
}

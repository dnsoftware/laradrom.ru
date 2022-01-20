<?php

namespace App\Containers\PinSection\PinType\Data\Queries;

use App\Containers\PinSection\PinType\Models\PinType;

interface PinTypeQueries
{
    public function getById($id): PinType;
    public function getAllOrdered();


}

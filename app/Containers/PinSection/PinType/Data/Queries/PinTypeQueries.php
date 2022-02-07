<?php

namespace App\Containers\PinSection\PinType\Data\Queries;

use App\Containers\PinSection\PinType\Data\POPO\PinType;
use Illuminate\Support\Collection;

interface PinTypeQueries
{
    public function getById($id): PinType;
    public function getAllOrdered(): Collection;
}

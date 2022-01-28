<?php

namespace App\Containers\PinSection\PinType\Data\Queries;

use App\Containers\PinSection\PinType\Entities\PinTypeEntity;
use App\Containers\PinSection\PinType\Models\PinTypeRead;
use Illuminate\Support\Collection;

interface PinTypeQueries
{
    public function getById($id): PinTypeEntity;
    public function getAllOrdered(): Collection;
}

<?php

namespace App\Containers\PinSection\PinType\Data\Queries;

use App\Containers\PinSection\PinType\Models\PinType;
use Illuminate\Support\Facades\DB;

final class DbPinTypeQueries implements PinTypeQueries
{
    public function getById($id): PinType
    {
        return PinType::find($id);
    }

    public function getAllOrdered()
    {
        return PinType::orderBy('order_num', 'asc')->get()->keyBy('id');
    }

}


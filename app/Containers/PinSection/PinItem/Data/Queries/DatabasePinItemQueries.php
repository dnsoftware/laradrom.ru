<?php

namespace App\Containers\PinSection\PinItem\Data\Queries;

use App\Containers\PinSection\PinItem\Models\PinItemRead;
use App\Containers\PinSection\PinType\Models\PinTypeRead;
use Illuminate\Support\Collection;

final class DatabasePinItemQueries implements PinItemQueries
{
    public function getById($id)
    {
        $pinType = PinItemRead::with('tags')->find($id);
        return $pinType;
    }

}

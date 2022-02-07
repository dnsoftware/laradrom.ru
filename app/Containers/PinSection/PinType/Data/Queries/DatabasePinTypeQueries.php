<?php

namespace App\Containers\PinSection\PinType\Data\Queries;

use App\Containers\PinSection\PinType\Data\Factories\PinTypePopoFactory;
use App\Containers\PinSection\PinType\Data\POPO\Collections\PinTypeCollection;
use App\Containers\PinSection\PinType\Data\POPO\PinType;
use App\Containers\PinSection\PinType\Models\PinTypeRead;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;

final class DatabasePinTypeQueries implements PinTypeQueries
{
    public function getById($id): PinType
    {
        $pinType = PinTypeRead::findOrFail($id);
        return app(PinTypePopoFactory::class)->createFromEloquent($pinType);
    }

    public function getAllOrdered(): PinTypeCollection
    {
        $pinTypes = PinTypeRead::orderBy('order_num', 'asc')->get()->keyBy('id');
        $pinTypeCollection = app(PinTypePopoFactory::class)->createCollectionFromEloquent($pinTypes);

        return $pinTypeCollection;
    }

}


<?php

namespace App\Containers\PinSection\PinType\Data\Queries;

use App\Containers\PinSection\PinType\Data\Factories\PinTypeEntityFactory;
use App\Containers\PinSection\PinType\Data\Factories\PinTypeFactory;
use App\Containers\PinSection\PinType\Entities\PinTypeEntity;
use App\Containers\PinSection\PinType\Models\PinType;
use App\Containers\PinSection\PinType\Models\PinTypeRead;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;

final class DbPinTypeQueries implements PinTypeQueries
{
    public function getById($id): PinTypeEntity
    {
        $pinType = PinTypeRead::findOrFail($id);
        return PinTypeEntityFactory::createFromEloquent($pinType);
    }

    public function getAllOrdered(): Collection
    {
        $pinTypes = PinTypeRead::orderBy('order_num', 'asc')->get()->keyBy('id');
//dd($pinTypes->toBase());
        $pinTypeCollection = PinTypeEntityFactory::createCollectionFromEloquent($pinTypes);
dd($pinTypeCollection);

        return $pinTypeCollection;
    }

}


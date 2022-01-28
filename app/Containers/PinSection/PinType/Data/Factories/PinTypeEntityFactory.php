<?php

namespace App\Containers\PinSection\PinType\Data\Factories;

use App\Containers\PinSection\PinType\Entities\PinTypeEntity;
use App\Containers\PinSection\PinType\Models\PinTypeRead;
use Illuminate\Support\Collection;


class PinTypeEntityFactory
{
    public static function createFromEloquent(PinTypeRead $pinType): PinTypeEntity
    {
        $pinTypeNew = new PinTypeEntity();

        $pinTypeNew->id = $pinType->id;
        $pinTypeNew->name = $pinType->name;
        $pinTypeNew->description = $pinType->description;
        $pinTypeNew->pinCount = $pinType->pin_count;
        $pinTypeNew->slug = $pinType->slug;
        $pinTypeNew->orderNum = $pinType->order_num;
        $pinTypeNew->backColor = $pinType->back_color;

        return $pinTypeNew;
    }

    public static function createCollectionFromEloquent(\Illuminate\Database\Eloquent\Collection $collection): Collection
    {
        $pinTypeCollection = new Collection();
        foreach($collection as $key => $item) {
            $pinTypeCollection->put($item->id, $item);
        }
        return $pinTypeCollection;
    }

}

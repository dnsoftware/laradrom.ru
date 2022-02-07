<?php

namespace App\Containers\PinSection\PinType\Data\Factories;

use App\Containers\PinSection\PinType\Data\POPO\Collections\PinTypeCollection;
use App\Containers\PinSection\PinType\Data\POPO\PinType;
use App\Containers\PinSection\PinType\Models\PinTypeRead;
use Illuminate\Database\Eloquent\Collection;

/**
 * Фабрика простых объектов
 */
class PinTypePopoFactory
{
    public function createSimple() {
        $item = new PinType();

        $item->id = 1;
        $item->name = 'simple';
        $item->description = 'description';
        $item->pinCount = 1;
        $item->slug = 'slug';
        $item->orderNum = 10;
        $item->backColor = '#ffffff';

        return $item;
    }

    public function createFromEloquent(PinTypeRead $item): PinType
    {
        $new = new PinType();

        $new->id = $item->id;
        $new->name = $item->name;
        $new->description = $item->description;
        $new->pinCount = $item->pin_count;
        $new->slug = $item->slug;
        $new->orderNum = $item->order_num;
        $new->backColor = $item->back_color;

        return $new;
    }


    public function createCollectionFromEloquent(Collection $collection): PinTypeCollection
    {
        $pinTypeCollection = new PinTypeCollection();
        $collection->each( fn($item, $key) => $pinTypeCollection->put($item->id, $this->createFromEloquent($item)) );

        return $pinTypeCollection;
    }

}

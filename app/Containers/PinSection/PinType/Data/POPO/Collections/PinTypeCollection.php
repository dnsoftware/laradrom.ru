<?php

namespace App\Containers\PinSection\PinType\Data\POPO\Collections;

use App\Containers\PinSection\PinType\Data\POPO\PinType;
use App\Ship\Exceptions\InvalidElementTypeOfCollectionException;
use Illuminate\Support\Collection;

class PinTypeCollection extends Collection
{
    public function current() : ?PinType {
        return parent::current();
    }

    public function offsetGet($offset) : ?PinType {
        return parent::offsetGet($offset);
    }

    public function offsetSet($offset, $value) {
        if (!$value instanceof PinType) {
            throw new InvalidElementTypeOfCollectionException("Value must be instance of " . PinType::class);
        }

        parent::offsetSet($offset, $value);
    }
}

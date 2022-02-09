<?php

namespace App\Containers\BlogSection\BlogCategory\Data\POPO\Collections;

use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Ship\Exceptions\InvalidElementTypeOfCollectionException;
use Illuminate\Support\Collection;

class BlogCategoryCollection extends Collection
{
    public function current() : ?BlogCategory {
        return parent::current();
    }

    public function offsetGet($offset) : ?BlogCategory {
        return parent::offsetGet($offset);
    }

    public function offsetSet($offset, $value) {
        if (!$value instanceof BlogCategory) {
            throw new InvalidElementTypeOfCollectionException("Value must be instance of " . BlogCategory::class);
        }

        parent::offsetSet($offset, $value);
    }
}

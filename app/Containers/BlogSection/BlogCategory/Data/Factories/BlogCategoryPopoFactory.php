<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Factories;

use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Containers\BlogSection\BlogCategory\Data\POPO\Collections\BlogCategoryCollection;
use App\Containers\BlogSection\BlogCategory\Models\BlogCategoryRead;
use App\Ship\Parents\Models\BaseModel;
use Illuminate\Database\Eloquent\Collection;

/**
 * Фабрика простых объектов
 */
class BlogCategoryPopoFactory
{
    public function createSimple() {
        $item = new BlogCategory();

        $item->id = 1;
        $item->userId = 1;
        $item->name = 'name';

        return $item;
    }

    public function createFromEloquent(BaseModel $item): BlogCategory
    {
        $new = new BlogCategory();

        $new->id = $item->id;
        $new->userId = $item->user_id;
        $new->name = $item->name;

        return $new;
    }


    public function createCollectionFromEloquent(Collection $collection): BlogCategoryCollection
    {
        $plainCollection = new BlogCategoryCollection();
        $collection->each( fn($item, $key) => $plainCollection->put($item->id, $this->createFromEloquent($item)) );

        return $plainCollection;
    }

}

<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Queries;

use App\Containers\BlogSection\BlogCategory\Data\Factories\BlogCategoryPopoFactory;
use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Containers\BlogSection\BlogCategory\Data\POPO\Collections\BlogCategoryCollection;
use App\Containers\BlogSection\BlogCategory\Models\BlogCategoryRead;
use Illuminate\Support\Collection;

final class DatabaseBlogCategoryQueries implements BlogCategoryQueries
{
    public function getById($id): BlogCategory
    {
        $item = BlogCategoryRead::findOrFail($id);
        return app(BlogCategoryPopoFactory::class)->createFromEloquent($item);
    }

    public function getUserCategories($userId): BlogCategoryCollection
    {
        $items = BlogCategoryRead::where('user_id', $userId)
                    ->orderBy('name', 'asc')
                    ->get()
                    ->keyBy('id');
        $itemsCollection = app(BlogCategoryPopoFactory::class)->createCollectionFromEloquent($items);

        return $itemsCollection;
    }


}


<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Queries;

use App\Containers\BlogSection\BlogCategory\Models\BlogCategoryRead;

final class DatabaseBlogCategoryQueries implements BlogCategoryQueries
{
    public function getById($id): BlogCategory
    {
        $pinType = BlogCategoryRead::findOrFail($id);
        return app(BlogCategoryPopoFactory::class)->createFromEloquent($pinType);
    }


}


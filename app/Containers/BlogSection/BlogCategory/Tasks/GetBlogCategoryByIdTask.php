<?php

namespace App\Containers\BlogSection\BlogCategory\Tasks;

use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Containers\BlogSection\BlogCategory\Data\Queries\BlogCategoryQueries;
use App\Ship\Parents\Tasks\Task;

class GetBlogCategoryByIdTask extends Task
{
    public function run(int $id): BlogCategory
    {
        $category = app(BlogCategoryQueries::class)->getById($id);

        return $category;
    }
}

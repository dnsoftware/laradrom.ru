<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Queries;

use Illuminate\Support\Collection;

interface BlogCategoryQueries
{
    public function getById($id): BlogCategory;
}

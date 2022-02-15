<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Queries;

use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use Illuminate\Support\Collection;

interface BlogCategoryQueries
{
    public function getById($id): BlogCategory;
    public function getUserCategories($userId): Collection;
}

<?php

namespace App\Containers\BlogSection\BlogCategory\Tasks;

use App\Containers\BlogSection\BlogCategory\Data\Queries\BlogCategoryQueries;
use App\Containers\PinSection\PinType\Data\Queries\PinTypeQueries;
use App\Ship\Exceptions\AuthenticationException;
use App\Ship\Parents\Tasks\Task;
use Illuminate\Auth\Access\AuthorizationException;

class GetUserBlogCategoriesTask extends Task
{
    public function run(int $userId)
    {
        $userCategories = app(BlogCategoryQueries::class)->getUserCategories($userId);

        return $userCategories;
    }
}

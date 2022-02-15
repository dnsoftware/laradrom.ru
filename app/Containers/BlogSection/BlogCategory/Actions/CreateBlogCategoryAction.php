<?php

namespace App\Containers\BlogSection\BlogCategory\Actions;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Containers\BlogSection\BlogCategory\Tasks\GetUserBlogCategoriesTask;
use App\Ship\Parents\Actions\Action;

class CreateBlogCategoryAction extends Action
{
    public function run($userId)
    {
        $categories = app(GetUserBlogCategoriesTask::class)->run($userId);

        return [
            'categories' => $categories
        ];
    }
}

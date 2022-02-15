<?php

namespace App\Containers\BlogSection\BlogCategory\Actions;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Containers\BlogSection\BlogCategory\Tasks\GetUserBlogCategoriesTask;
use App\Ship\Parents\Actions\Action;

class StoreBlogCategoryAction extends Action
{
    public function run(BlogCategoryDto $data)
    {
        return app(CreateBlogCategoryTask::class)->run($data);
    }
}

<?php

namespace App\Containers\BlogSection\BlogCategory\Actions;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Containers\BlogSection\BlogCategory\Tasks\GetUserBlogCategoriesTask;
use App\Ship\DTOs\ActionReturnDTO;
use App\Ship\DTOs\ActionSuccessDTO;
use App\Ship\Parents\Actions\Action;

class CreateBlogCategoryAction extends Action
{
    public function run($userId): ActionReturnDTO
    {
        $categories = app(GetUserBlogCategoriesTask::class)->run($userId);

        return new ActionSuccessDTO(
            data: [
                'categories' => $categories
            ],
            code: 200
        );

    }
}



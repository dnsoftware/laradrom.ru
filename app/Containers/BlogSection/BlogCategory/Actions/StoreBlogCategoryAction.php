<?php

namespace App\Containers\BlogSection\BlogCategory\Actions;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Containers\BlogSection\BlogCategory\Tasks\GetUserBlogCategoriesTask;
use App\Ship\DTOs\ActionErrorDTO;
use App\Ship\DTOs\ActionReturnDTO;
use App\Ship\DTOs\ActionSuccessDTO;
use App\Ship\Parents\Actions\Action;

class StoreBlogCategoryAction extends Action
{
    public function run(BlogCategoryDto $data): ActionReturnDTO
    {
        try {
            $result =  app(CreateBlogCategoryTask::class)->run($data);

            return new ActionSuccessDTO(
                data: $result,
                code: 200
            );


        } catch (\Exception $e) {

            return new ActionErrorDTO(
                message: $e->getMessage(),
                errors: $e->getErrors(),
                code: $e->getCode()
            );

        }
    }
}

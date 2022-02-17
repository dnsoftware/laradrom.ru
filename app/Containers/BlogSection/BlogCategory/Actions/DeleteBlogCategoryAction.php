<?php

namespace App\Containers\BlogSection\BlogCategory\Actions;

use App\Containers\BlogSection\BlogCategory\Tasks\DeleteBlogCategoryTask;
use App\Containers\BlogSection\BlogCategory\Tasks\GetBlogCategoryByIdTask;
use App\Ship\DTOs\ActionErrorDTO;
use App\Ship\DTOs\ActionReturnDTO;
use App\Ship\DTOs\ActionSuccessDTO;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Exceptions\NotAuthorizedResourceException;
use App\Ship\Parents\Actions\Action;
use Illuminate\Support\Facades\Gate;
use Symfony\Component\HttpFoundation\Response;

class DeleteBlogCategoryAction extends Action
{
    public function run(int $categoryId): ActionReturnDTO
    {
        try {
            $blogCategory = app(GetBlogCategoryByIdTask::class)->run($categoryId);

            if (!Gate::allows('delete', $blogCategory)) {
                throw (new NotAuthorizedResourceException('Нет прав на удаление категории'));
            }

            if (!app(DeleteBlogCategoryTask::class)->run($categoryId)) {
                throw (new DeleteResourceFailedException('Ошибка при удалении категории'));
            }

            return new ActionSuccessDTO(
                code: 204
            );

        } catch ( NotAuthorizedResourceException
                | DeleteResourceFailedException
                | \Exception $e) {

            return new ActionErrorDTO(
                message: $e->getMessage(),
                errors: $e->getErrors(),
                code: $e->getCode()
            );

        }

    }
}

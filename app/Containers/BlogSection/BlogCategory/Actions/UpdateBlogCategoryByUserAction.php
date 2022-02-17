<?php

namespace App\Containers\BlogSection\BlogCategory\Actions;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Tasks\GetBlogCategoryByIdTask;
use App\Containers\BlogSection\BlogCategory\Tasks\UpdateBlogCategoryTask;
use App\Ship\DTOs\ActionErrorDTO;
use App\Ship\DTOs\ActionReturnDTO;
use App\Ship\DTOs\ActionSuccessDTO;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Exceptions\NotAuthorizedResourceException;
use App\Ship\Parents\Actions\Action;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Support\Facades\Gate;
use Mockery\Exception;

class UpdateBlogCategoryByUserAction extends Action
{
    public function run(BlogCategoryDto $dto): ActionReturnDTO
    {
        try {
            $blogCategory = app(GetBlogCategoryByIdTask::class)->run($dto->id);

            if (!Gate::allows('update', $blogCategory)) {
                throw (new NotAuthorizedResourceException('Нет прав на редактирование категории'));
            }

            $result = app(UpdateBlogCategoryTask::class)->run($dto);

            return new ActionSuccessDTO(
                data: $result,
                code: 200
            );

        } catch ( NotAuthorizedResourceException
                | \Exception $e) {

            return new ActionErrorDTO(
                message: $e->getMessage(),
                errors: $e->getErrors(),
                code: $e->getCode()
            );

        } catch (\Error $e) {
            return new ActionErrorDTO(
                message: 'КРИТИЧЕСКАЯ ОШИБКА UpdateBlogCategoryByUserAction',
                errors: [],
                code: $e->getCode()
            );
        }

    }
}

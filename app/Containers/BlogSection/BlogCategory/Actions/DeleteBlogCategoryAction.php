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
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Database\QueryException;
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

        } catch ( ModelNotFoundException $e) {
            return new ActionErrorDTO(
                message: 'Категория отсутствует! Удаление невозможно!',
                code: 404
            );

        } catch (QueryException $e) {
            return new ActionErrorDTO(
                message: 'Удаление невозможно!',
                code: 424
            );

        } catch ( NotAuthorizedResourceException
                | DeleteResourceFailedException $e) {

            return new ActionErrorDTO(
                message: $e->getMessage(),
                errors: $e->getErrors(),
                code: $e->getCode()
            );

        } catch (\Exception $e) {

            $errors = [$e->getMessage()];
            if(method_exists($e,'getErrors')) {
                $errors = $e->getErrors();
            }

            return new ActionErrorDTO(
                message: $e->getMessage(),
                errors: $errors,
                code: $e->getCode()
            );

        } catch (\Error $e) {
            return new ActionErrorDTO(
                message: 'КРИТИЧЕСКАЯ ОШИБКА UpdateBlogCategoryByUserAction',
                code: $e->getCode()
            );
        }

    }
}

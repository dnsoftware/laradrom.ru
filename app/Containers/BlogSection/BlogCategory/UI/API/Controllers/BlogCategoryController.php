<?php

namespace App\Containers\BlogSection\BlogCategory\UI\API\Controllers;

use App\Containers\BlogSection\BlogCategory\Actions\CreateBlogCategoryAction;
use App\Containers\BlogSection\BlogCategory\Actions\StoreBlogCategoryAction;
use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDtoFactory;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Containers\BlogSection\BlogCategory\Tasks\GetBlogCategoryByIdTask;
use App\Containers\BlogSection\BlogCategory\Tasks\GetUserBlogCategoriesTask;
use App\Containers\BlogSection\BlogCategory\UI\API\Requests\BlogCategoryRequest;
use App\Containers\BlogSection\BlogCategory\UI\API\Requests\BlogCategoryUpdateRequest;
use App\Containers\PinSection\PinType\UI\API\Transformers\JsonApiPinTypeTransformer;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Parents\Exceptions\Exception;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Support\Facades\Gate;


class BlogCategoryController extends ApiController
{

    public function create()
    {
        $userId = auth()->user()->id;

        $data = app(CreateBlogCategoryAction::class)->run($userId);

        return response()->json($data);
    }

    public function store(BlogCategoryRequest $request)
    {
        $userId = auth()->user()->id;
        $data = $request->validated();

        $dto = app(BlogCategoryDtoFactory::class)->fromArray([
            'userId' => $userId,
            'name' => $data['name']
        ]);

        $result = app(StoreBlogCategoryAction::class)->run($dto);

        return response()->json($result);
    }

    public function update(BlogCategoryUpdateRequest $request)
    {
        $userId = auth()->user()->id;
        $data = $request->validated();

        $dto = app(BlogCategoryDtoFactory::class)->fromArray([
            'id' => intval($data['id']),
            'userId' => $userId,
            'name' => $data['name']
        ]);

        $blogCategory = app(GetBlogCategoryByIdTask::class)->run($dto->id);

        if(!$res = Gate::allows('update', $blogCategory)) {
            return response()->json([
                'type' => 'noauthUpdate',
                'message' => 'Нет прав на редактирование записи',
                'errors' => []
            ], 401);
        }

        $result = app(StoreBlogCategoryAction::class)->run($dto);

        return response()->json($result);
    }


}

<?php

namespace App\Containers\BlogSection\BlogCategory\UI\API\Controllers;

use App\Containers\BlogSection\BlogCategory\Actions\CreateBlogCategoryAction;
use App\Containers\BlogSection\BlogCategory\Actions\DeleteBlogCategoryAction;
use App\Containers\BlogSection\BlogCategory\Actions\StoreBlogCategoryAction;
use App\Containers\BlogSection\BlogCategory\Actions\UpdateBlogCategoryByUserAction;
use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDtoFactory;
use App\Containers\BlogSection\BlogCategory\UI\API\Requests\BlogCategoryRequest;
use App\Containers\BlogSection\BlogCategory\UI\API\Requests\BlogCategoryUpdateRequest;
use App\Ship\Parents\Controllers\ApiController;


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

        $result = app(UpdateBlogCategoryByUserAction::class)->run($dto);

        return response()->json($result, $result->code);
    }

    public function destroy(int $categoryId)
    {
        $result = app(DeleteBlogCategoryAction::class)->run($categoryId);

        return response()->json($result, $result->code);
    }

}

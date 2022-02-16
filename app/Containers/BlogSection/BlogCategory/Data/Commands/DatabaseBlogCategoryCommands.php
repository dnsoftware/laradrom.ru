<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Commands;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Data\Factories\BlogCategoryPopoFactory;
use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Containers\BlogSection\BlogCategory\Models\BlogCategoryWrite;

class DatabaseBlogCategoryCommands implements BlogCategoryCommands
{
    public function create(BlogCategoryDto $data): BlogCategory
    {
        $newId = BlogCategoryWrite::insertGetId([
            'user_id' => $data->userId,
            'name' => $data->name,
        ]);

        $row = BlogCategoryWrite::find($newId);

        $item = app(BlogCategoryPopoFactory::class)->createFromEloquent($row);

        return $item;
    }

    public function update(BlogCategoryDto $data): BlogCategory
    {
        $upd = BlogCategoryWrite::where('id', $data->id)
                ->update([
                    'name' => $data->name,
                ]);

        $row = BlogCategoryWrite::find($data->id);

        $item = app(BlogCategoryPopoFactory::class)->createFromEloquent($row);

        return $item;
    }

    public function delete(int $categoryId)
    {
        $res = BlogCategoryWrite::where('id', $categoryId)->delete();

        return $res;
    }


}

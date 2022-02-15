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
}

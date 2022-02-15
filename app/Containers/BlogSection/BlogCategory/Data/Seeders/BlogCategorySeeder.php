<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Seeders;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDtoFactory;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Ship\Parents\Seeders\Seeder;

class BlogCategorySeeder extends Seeder
{
    public function run($userId)
    {
        $data = (new BlogCategoryDtoFactory())->fromArray([
            'userId' => $userId,
            'name' =>  \Str::random(10)
        ]);
        app(CreateBlogCategoryTask::class)->run($data);
    }
}

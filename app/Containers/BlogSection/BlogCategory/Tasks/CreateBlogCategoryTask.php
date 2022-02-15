<?php

namespace App\Containers\BlogSection\BlogCategory\Tasks;

use App\Containers\BlogSection\BlogCategory\Data\Commands\BlogCategoryCommands;
use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Ship\Parents\Tasks\Task;

class CreateBlogCategoryTask extends Task
{
    public function run(BlogCategoryDto $data): BlogCategory
    {
        return app(BlogCategoryCommands::class)->create($data);
    }
}

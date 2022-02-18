<?php

namespace App\Containers\BlogSection\BlogCategory\Tasks;

use App\Containers\BlogSection\BlogCategory\Data\Commands\BlogCategoryCommands;
use App\Ship\Parents\Tasks\Task;

class DeleteBlogCategoryTask extends Task
{
    public function run(int $categoryId)
    {
        //вставить проверку на связанные записи

        return app(BlogCategoryCommands::class)->delete($categoryId);
    }
}

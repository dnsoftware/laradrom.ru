<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Commands;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDto;
use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;

interface BlogCategoryCommands
{
    public function create(BlogCategoryDto $data): BlogCategory;
    public function update(BlogCategoryDto $data): BlogCategory;
    public function delete(int $categoryId);
}

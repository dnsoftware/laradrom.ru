<?php

namespace App\Containers\BlogSection\Blog\Entities;

use App\Containers\BlogSection\BlogCategory\Entities\BlogCategoryEntity;

class BlogEntity
{
    public int $id;
    public BlogCategoryEntity $category;
    public string $name;
    public string $content;
    public \DateTime $createdAt;
    public \DateTime $updatedAt;

}

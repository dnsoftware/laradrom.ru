<?php

namespace App\Containers\BlogSection\BlogCategory\Entities;

class BlogCategoryEntity
{
    public int $id;
    public int $parentId;
    public string $name;
    public int $orderNum;

}

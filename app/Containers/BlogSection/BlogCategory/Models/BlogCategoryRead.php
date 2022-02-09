<?php

namespace App\Containers\BlogSection\BlogCategory\Models;

use App\Ship\Parents\Models\ReadModel;

class BlogCategoryRead extends ReadModel
{
    public $timestamps = false;

    protected $table = 'blog_categories';
    protected $fillable = [];
    protected $attributes = [];
    protected $hidden = [];
    protected $casts = [];


    /**
     * A resource key to be used in the serialized responses.
     */
    protected string $resourceKey = 'BlogCategory';
}

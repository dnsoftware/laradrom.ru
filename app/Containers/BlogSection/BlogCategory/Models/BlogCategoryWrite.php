<?php

namespace App\Containers\BlogSection\BlogCategory\Models;

use App\Ship\Parents\Models\WriteModel;

class BlogCategoryWrite extends WriteModel
{
    public $timestamps = false;

    protected $table = 'blog_categories';

    protected $fillable = [
        'name'
    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];


    /**
     * A resource key to be used in the serialized responses.
     */
    protected string $resourceKey = 'BlogCategory';
}

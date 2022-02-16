<?php

namespace App\Containers\BlogSection\BlogCategory\Policies;

use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class BlogCategoryPolicy
{
    use HandlesAuthorization;

    public function __construct()
    {
        //
    }

    public function update (User $user, BlogCategory $blogCategory) {
        return $user->id === $blogCategory->userId;
    }

    public function delete (User $user, BlogCategory $blogCategory) {
        return $user->id === $blogCategory->userId;
    }

}

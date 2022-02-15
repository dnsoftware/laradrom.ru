<?php

namespace App\Containers\BlogSection\BlogCategory\Providers;

use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Containers\BlogSection\BlogCategory\Policies\BlogCategoryPolicy;
use App\Ship\Parents\Providers\AuthProvider;

class AuthServiceProvider extends AuthProvider
{
    protected $policies = [
        BlogCategory::class => BlogCategoryPolicy::class,
    ];


        public function boot():void
    {
        $this->registerPolicies();

        //
    }

}

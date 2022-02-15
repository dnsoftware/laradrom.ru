<?php

namespace App\Containers\BlogSection\BlogCategory\Providers;

use App\Containers\BlogSection\BlogCategory\Data\Commands\BlogCategoryCommands;
use App\Containers\BlogSection\BlogCategory\Data\Commands\DatabaseBlogCategoryCommands;
use App\Containers\BlogSection\BlogCategory\Data\Queries\BlogCategoryQueries;
use App\Containers\BlogSection\BlogCategory\Data\Queries\DatabaseBlogCategoryQueries;
use App\Ship\Parents\Providers\MainProvider;

/**
 * The Main Service Provider of this container, it will be automatically registered in the framework.
 */
class MainServiceProvider extends MainProvider
{
    /**
     * Container Service Providers.
     */
    public array $serviceProviders = [
        AuthServiceProvider::class,
    ];

    /**
     * Container Aliases
     */
    public array $aliases = [
        // 'Foo' => Bar::class,
    ];


    /**
     * Register anything in the container.
     */
    public function register(): void
    {
        parent::register();

        $this->app->bind(BlogCategoryQueries::class,
            DatabaseBlogCategoryQueries::class);

        $this->app->bind(BlogCategoryCommands::class,
            DatabaseBlogCategoryCommands::class);
    }

    public function boot(): void
    {

    }


}

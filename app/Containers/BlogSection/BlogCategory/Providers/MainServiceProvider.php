<?php

namespace App\Containers\BlogSection\BlogCategory\Providers;

use App\Containers\AppSection\Common\Tasks\DatabaseSeedByTestSqlDumpTask;
use App\Containers\AppSection\Common\Tasks\DropAllDatabaseTablesTask;
use App\Containers\BlogSection\BlogCategory\Data\Queries\BlogCategoryQueries;
use App\Containers\BlogSection\BlogCategory\Data\Queries\DatabaseBlogCategoryQueries;
use App\Containers\PinSection\PinType\Data\Queries\DatabasePinTypeQueries;
use App\Containers\PinSection\PinType\Data\Queries\PinTypeQueries;
use App\Containers\PinSection\PinType\Tasks\GetAllPinTypesTask;
use App\Ship\Parents\Providers\MainProvider;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\View;

/**
 * The Main Service Provider of this container, it will be automatically registered in the framework.
 */
class MainServiceProvider extends MainProvider
{
    /**
     * Container Service Providers.
     */
    public array $serviceProviders = [
        // InternalServiceProviderExample::class,
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
    }

    public function boot(): void
    {

    }


}

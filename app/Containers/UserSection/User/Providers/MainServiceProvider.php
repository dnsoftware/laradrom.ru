<?php

namespace App\Containers\UserSection\User\Providers;

use App\Containers\UserSection\User\Data\Queries\DatabaseLaraUserQueries;
use App\Containers\UserSection\User\Data\Queries\LaraUserQueries;
use Illuminate\Support\ServiceProvider;

/**
 * A custom Service Provider - remember to register it in the MainServiceProvider of this Container.
 */
class MainServiceProvider extends ServiceProvider
{
    /**
     * Register anything in the container.
     */
    public function register(): void
    {
        parent::register();

        $this->app->bind(LaraUserQueries::class,
            DatabaseLaraUserQueries::class);
    }
}

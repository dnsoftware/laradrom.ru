<?php

namespace App\Containers\PinSection\StackItem\Providers;

use App\Containers\PinSection\StackItem\View\Components\StackItemsMenu;
use App\Ship\Parents\Providers\MainProvider;
use Illuminate\Support\Facades\Blade;

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

        // $this->app->bind(UserRepositoryInterface::class, UserRepository::class);
        // ...
    }

    public function boot(): void
    {
        Blade::component(StackItemsMenu::class, 'stack-items-menu');
    }

}

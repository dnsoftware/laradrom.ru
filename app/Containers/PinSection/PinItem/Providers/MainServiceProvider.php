<?php

namespace App\Containers\PinSection\PinItem\Providers;

use App\Containers\PinSection\PinItem\Data\Queries\DbPinItemQueries;
use App\Containers\PinSection\PinItem\Data\Queries\PinItemQueries;
use App\Containers\PinSection\PinItem\View\Components\FilteredPinsHeader;
use App\Containers\PinSection\PinItem\View\Components\PinItemsFilteredList;
use App\Containers\PinSection\PinItem\View\Components\PinItemTargetLink;
use App\Containers\PinSection\PinType\Data\Queries\DbPinTypeQueries;
use App\Containers\PinSection\PinType\Data\Queries\PinTypeQueries;
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

        $this->app->bind(PinItemQueries::class,
            DbPinItemQueries::class);
    }

    public function boot(): void
    {
        Blade::component(PinItemsFilteredList::class, 'pin-items-filtered-list');
        Blade::component(FilteredPinsHeader::class, 'filtered-pins-header');
        Blade::component(PinItemTargetLink::class, 'pin-item-target-link');
    }



}

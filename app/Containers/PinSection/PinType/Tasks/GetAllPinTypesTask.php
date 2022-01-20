<?php

namespace App\Containers\PinSection\PinType\Tasks;

use App\Containers\PinSection\PinType\Data\Queries\PinTypeQueries;
use App\Ship\Parents\Tasks\Task;

class GetAllPinTypesTask extends Task
{
    protected PinTypeQueries $query;

    public function __construct(PinTypeQueries $query)
    {
        $this->query = $query;
    }

    public function run()
    {
        return $this->query->getAllOrdered();
    }
}

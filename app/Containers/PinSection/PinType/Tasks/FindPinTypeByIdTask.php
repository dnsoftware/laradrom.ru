<?php

namespace App\Containers\PinSection\PinType\Tasks;

use App\Containers\PinSection\PinType\Data\Queries\PinTypeQueries;
use App\Containers\PinSection\PinType\Data\Repositories\PinTypeRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindPinTypeByIdTask extends Task
{
    protected PinTypeQueries $query;

    public function __construct(PinTypeQueries $query)
    {
        $this->query = $query;
    }

    public function run(int $id)
    {
        return $this->query->getById($id);
    }
}

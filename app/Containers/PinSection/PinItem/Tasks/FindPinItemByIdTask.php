<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinItem\Data\Queries\PinItemQueries;
use App\Containers\PinSection\PinItem\Data\Repositories\PinItemRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindPinItemByIdTask extends Task
{
    protected PinItemQueries $query;

    public function __construct(PinItemQueries $query)
    {
        $this->query = $query;
    }

    public function run($id)
    {
        return $this->query->getById($id);
    }
}

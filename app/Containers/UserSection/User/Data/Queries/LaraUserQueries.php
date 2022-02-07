<?php

namespace App\Containers\UserSection\User\Data\Queries;

use App\Containers\UserSection\User\Data\POPO\LaraUser;
use Illuminate\Support\Collection;

interface LaraUserQueries
{
    public function getById($id): LaraUser;

}

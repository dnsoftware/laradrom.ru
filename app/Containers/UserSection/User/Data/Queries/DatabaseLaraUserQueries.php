<?php

namespace App\Containers\UserSection\User\Data\Queries;

use App\Containers\UserSection\User\Data\Factories\LaraUserPopoFactory;
use App\Containers\UserSection\User\Data\POPO\LaraUser;
use App\Containers\UserSection\User\Models\LaraUserRead;

final class DatabaseLaraUserQueries implements LaraUserQueries
{
    public function getById($id): LaraUser
    {
        $pinType = LaraUserRead::findOrFail($id);
        return app(LaraUserPopoFactory::class)->createFromEloquent($pinType);
    }


}


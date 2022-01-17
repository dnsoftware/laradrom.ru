<?php

namespace App\Containers\UserSection\User\Tasks;

use App\Models\User;
use App\Ship\Parents\Tasks\Task;

class GetUserById extends Task
{
    public function run(int $id)
    {
        return User::find($id);
    }
}

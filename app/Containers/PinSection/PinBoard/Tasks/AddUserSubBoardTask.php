<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Ship\Parents\Tasks\Task;

class AddUserSubBoardTask extends Task
{
    // Добавление доски пользователя в указанный раздел
    public function run(int $userId, int $parentBoardId, string $name)
    {
        $item = PinBoard::create([
            'parent_id' => $parentBoardId,
            'user_id' => $userId,
            'name' => $name
        ]);

        return $item;
    }
}

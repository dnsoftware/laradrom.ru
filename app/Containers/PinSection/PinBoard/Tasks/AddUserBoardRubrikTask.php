<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Ship\Parents\Tasks\Task;

class AddUserBoardRubrikTask extends Task
{

    // Добавление Рубрики досок пользователя
    public function run(int $user_id, string $name)
    {
        $item = PinBoard::create([
            'parent_id' => 0,
            'user_id' => $user_id,
            'name' => $name
        ]);

        return $item;
    }
}

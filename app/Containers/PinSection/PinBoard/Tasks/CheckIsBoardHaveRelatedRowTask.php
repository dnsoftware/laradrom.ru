<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinItemboard\Models\PinItemboard;
use App\Ship\Parents\Tasks\Task;

class CheckIsBoardHaveRelatedRowTask extends Task
{

    // Проверка на наличие связанных записей у пинлиста
    // возврат true, если связанные записи ЕСТЬ
    public function run(int $boardId)
    {
        if (PinItemboard::where('board_id', $boardId)
            ->orWhere('repin_from_board_id', $boardId)
            ->first()
        ) {
            return true;
        }

        return false;
    }
}

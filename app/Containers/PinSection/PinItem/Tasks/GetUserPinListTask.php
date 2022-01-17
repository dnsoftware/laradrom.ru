<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Ship\Parents\Tasks\Task;

class GetUserPinListTask extends Task
{
    /**
     * Получение списка пинов пользователя
     */
    public function run(int $userId)
    {
        $pins = PinItem::where('user_id', $userId)
            ->orderBy('created_at', 'desc')
            ->get()
            ->keyBy('id');

        return $pins;
    }
}

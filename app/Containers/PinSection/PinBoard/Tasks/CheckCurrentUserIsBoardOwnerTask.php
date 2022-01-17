<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Ship\Parents\Tasks\Task;
use Illuminate\Support\Facades\Auth;

class CheckCurrentUserIsBoardOwnerTask extends Task
{
    // Проверка владельца рубрики
    // возврат true, если текущий юзер - владелец указанной рубрикой
    public function run(int $boardId)
    {
        $user = Auth::user();

        if (PinBoard::where('user_id', $user->id)
            ->where('id', $boardId)
            ->first()
        ) {
            return true;
        }

        return false;

    }
}

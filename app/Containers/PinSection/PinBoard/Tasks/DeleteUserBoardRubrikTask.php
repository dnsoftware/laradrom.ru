<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Ship\Parents\Tasks\Task;
use Illuminate\Support\Facades\Auth;

class DeleteUserBoardRubrikTask extends Task
{

    // Удаление редактируемой рубрики
    public function run(int $boardId)
    {
        $user = Auth::user();

        return PinBoard::where('user_id', $user->id)
            ->where('id', $boardId)
            ->delete();
    }
}

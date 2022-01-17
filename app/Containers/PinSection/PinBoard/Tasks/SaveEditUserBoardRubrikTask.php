<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Ship\Parents\Tasks\Task;
use Illuminate\Support\Facades\Auth;

class SaveEditUserBoardRubrikTask extends Task
{
    // Сохранение редактируемой рубрики
    public function run(int $boardId, string $name)
    {
        $user = Auth::user();

        return PinBoard::where('user_id', $user->id)
            ->where('id', $boardId)
            ->update([
                'name' => $name
            ]);
    }
}

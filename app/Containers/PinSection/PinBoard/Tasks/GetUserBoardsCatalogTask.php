<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Containers\PinSection\PinBoard\Models\PinBoard;
use App\Models\User;
use App\Ship\Parents\Tasks\Task;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Auth;

// Получение каталога досок пользователя
class GetUserBoardsCatalogTask extends Task
{
    private ?User $current_user;
    private int $current_user_id = 0;
    private Collection $boards;

    public function __construct()
    {
        if ($this->current_user = Auth::user()) {
            $this->current_user_id = $this->current_user->id;
        }
    }

    public function run($orderBy = 'name')
    {
        $this->boards = PinBoard::where('user_id', $this->current_user_id)
            ->orderBy($orderBy)
            ->get()
            ->keyBy('id');

        return $this->boards;
    }

}

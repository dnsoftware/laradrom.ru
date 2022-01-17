<?php

namespace App\Containers\PinSection\PinBoard\Tasks;

use App\Models\User;
use App\Ship\Parents\Tasks\Task;

class GetPinBoardsUsersByItemboardsTask extends Task
{

    /**
     * Получение кодов авторов пинов согласно списку pin_itemboards
     * и получение самих авторов
     * @return mixed
     */
    public function run($pin_itemboards)
    {
        $board_user_ids = collect($pin_itemboards)->pluck('board_user_id', 'board_user_id');

        $pin_userboards = User::whereIn('id', $board_user_ids)->get()->keyBy('id');
        $pin_userboards->transform(function ($item, $key) {
            $item['slug'] = \Str::of($item->name)->slug('_');
            return $item;
        });

        return $pin_userboards;

    }
}

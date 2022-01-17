<?php

namespace App\Containers\PinSection\PinItem\Tasks;

use App\Containers\PinSection\PinItem\Exceptions\UserPinNotFoundException;
use App\Containers\PinSection\PinItem\Models\PinItem;

use App\Ship\Parents\Tasks\Task;

class GetUserPinOrStopTask extends Task
{

    /**
     * @param int $pin_id
     * @param int $user_id
     * @return PinItem
     *
     * @throws UserPinNotFoundException
     */
    public function run(int $pin_id, int $user_id)  : PinItem
    {
        if (!$pin = PinItem::where('id', $pin_id)
            ->where('user_id', $user_id)
            ->first()) {

            throw new UserPinNotFoundException();
        }

        return $pin;
    }
}

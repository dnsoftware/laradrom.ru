<?php

namespace App\Containers\UserSection\User\UI\API\Controllers;

use App\Containers\UserSection\User\Data\Factories\LaraUserPopoFactory;
use App\Ship\Parents\Controllers\ApiController;

class Controller extends ApiController
{
    public function getUserProfile()
    {
        $user = \Auth::user();

        $laraUser = app(LaraUserPopoFactory::class)->createFromEloquent($user);

        return response()->json($laraUser);

    }
}

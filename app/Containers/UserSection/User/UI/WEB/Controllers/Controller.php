<?php

namespace App\Containers\UserSection\User\UI\WEB\Controllers;

use App\Ship\Parents\Controllers\WebController;

class Controller extends WebController
{
    /**
     * Страница профиля пользователя
     */
    public function userProfile(int $id, string $slug)
    {

        return view('userSection@user::user_profile');
    }
}

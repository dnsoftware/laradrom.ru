<?php

namespace App\Containers\UserSection\User\Data\Factories;

use App\Containers\UserSection\User\Data\POPO\LaraUser;
use App\Containers\UserSection\User\Models\LaraUserRead;

use Illuminate\Database\Eloquent\Collection;

/**
 * Фабрика простых объектов
 */
class LaraUserPopoFactory
{
    public function createSimple() {

        $item = new LaraUser();

        $item->id = 1;
        $item->name = 'simple';
        $item->email = 'email@email.ru';
        $item->currentTeamId = 1;
        $item->profilePhotoPath = '/photo/path/png';

        return $item;

    }


    public function createFromEloquent(\Illuminate\Contracts\Auth\Authenticatable $item): LaraUser
    {
        $new = new LaraUser();

        $new->id = $item->id;
        $new->name = $item->name;
        $new->email = $item->email;
        $new->currentTeamId = $item->current_team_id;
        $new->profilePhotoPath = $item->profile_photo_path;

        return $new;
    }


}

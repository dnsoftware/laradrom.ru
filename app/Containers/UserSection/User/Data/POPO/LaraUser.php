<?php

namespace App\Containers\UserSection\User\Data\POPO;

use App\Ship\Parents\POPO\Popo;

class LaraUser extends Popo
{
    public int $id;
    public string $name;
    public string $email;
    public int $currentTeamId;
    public string $profilePhotoPath;

}

<?php

namespace App\Containers\PinSection\PinType\Data\POPO;

use App\Ship\Parents\POPO\Popo;

class PinType extends Popo
{
    // свойства
    public int      $id;
    public string   $name;
    public string   $description;
    public int      $pinCount;
    public string   $slug;
    public int      $orderNum;
    public string   $backColor;

    // связанные свойства

}


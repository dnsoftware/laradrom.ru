<?php

namespace App\Ship\Parents\POPO;

abstract class Popo
{
    public static function getStructure()
    {
        return get_class_vars(static::class);
    }
}

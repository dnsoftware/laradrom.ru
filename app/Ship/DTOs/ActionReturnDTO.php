<?php

namespace App\Ship\DTOs;

abstract class ActionReturnDTO
{
    public int $code;     //HTTP код ответа
    public string $status;
}

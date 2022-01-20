<?php

namespace App\Ship\Parents\Exceptions;



final class WriteOperationIsNotAllowedForReadModel extends \RuntimeException
{
    public function __construct()
    {
        parent::__construct(
            "Операция записи недоступна в модели для чтения");
    }
}

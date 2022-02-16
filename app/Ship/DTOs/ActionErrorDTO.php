<?php

namespace App\Ship\DTOs;

class ActionErrorDTO extends ActionReturnDTO
{
    public string $message = '';
    public array $errors = [];
    public int $code = 400;    //HTTP код ответа
    public string $status = 'error';


    public function __construct (string $message = 'unknown error', array $errors = [], int $code = 400) {

        $this->message = $message;
        $this->errors = $errors;
        $this->code = $code;

    }

}

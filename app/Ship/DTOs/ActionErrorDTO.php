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

    public static function createSimple(string $message, int $code) {

        return new self($message, [], $code);
    }

    public static function createExtended(\App\Ship\Parents\Exceptions\Exception $e) {

        return new self($e->getMessage(), $e->getErrors(), $e->getCode());
    }

    public static function createException(\Exception $e) {

        $message = '[code '.$e->getCode().'] '.$e->getMessage();
        $errors = [];
        if(method_exists($e,'getErrors')) {
            $errors = $e->getErrors();
        }

        return new self($message, $errors);
    }

    public static function createError(string $message, $internalCode) {
        $message = $message . ' Code ' . $internalCode;

        return new self($message, [], 500);
    }


}

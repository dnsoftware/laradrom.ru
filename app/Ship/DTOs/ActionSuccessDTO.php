<?php

namespace App\Ship\DTOs;

class ActionSuccessDTO extends ActionReturnDTO
{
    public $data = [];
    public array $meta = [];
    public int $code = 200;     //HTTP код ответа
    public string $status = 'success';

    public function __construct ($data = [], array $meta = [], int $code = 400) {

        $this->data = $data;
        $this->meta = $meta;
        $this->code = $code;

    }


}

<?php

namespace App\Containers\PinSection\PinItem\Exceptions;

use App\Ship\Parents\Exceptions\Exception;
use Symfony\Component\HttpFoundation\Response;

class UserPinNotFoundException extends Exception
{
    protected $code = Response::HTTP_BAD_REQUEST;
    protected $message = 'Нарушение прав доступа или пин пользователя не найден!';

    public function render($request)
    {
        return view('errors.pin.pin_not_found', ['message' => $this->message]);
    }

}

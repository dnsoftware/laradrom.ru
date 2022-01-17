<?php

namespace App\Containers\UserSection\User\UI\API\Controllers;

use App\Http\Resources\UserResource;
use App\Ship\Parents\Controllers\ApiController;
use Illuminate\Support\Facades\Auth;

class AuthController extends ApiController
{
    public function index()
    {
        return new UserResource(Auth::user());
    }

}




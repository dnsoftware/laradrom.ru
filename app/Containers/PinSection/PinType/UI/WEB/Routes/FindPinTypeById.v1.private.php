<?php

use App\Containers\PinSection\PinType\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintypes/{id}', [Controller::class, 'show'])
    ->name('web_pintype_show')
    ->middleware(['auth:web']);


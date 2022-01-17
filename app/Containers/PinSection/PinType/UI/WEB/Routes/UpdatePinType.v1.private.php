<?php

use App\Containers\PinSection\PinType\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('pintypes/{id}', [Controller::class, 'update'])
    ->name('web_pintype_update')
    ->middleware(['auth:web']);


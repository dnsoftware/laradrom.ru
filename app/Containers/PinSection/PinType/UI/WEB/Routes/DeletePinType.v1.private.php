<?php

use App\Containers\PinSection\PinType\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('pintypes/{id}', [Controller::class, 'destroy'])
    ->name('web_pintype_destroy')
    ->middleware(['auth:web']);


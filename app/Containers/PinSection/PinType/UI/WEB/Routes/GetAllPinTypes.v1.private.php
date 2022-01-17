<?php

use App\Containers\PinSection\PinType\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintypes', [Controller::class, 'index'])
    ->name('web_pintype_index')
    ->middleware(['auth:web']);


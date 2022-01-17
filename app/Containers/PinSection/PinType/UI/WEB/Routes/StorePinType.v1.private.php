<?php

use App\Containers\PinSection\PinType\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('pintypes/store', [Controller::class, 'store'])
    ->name('web_pintype_store')
    ->middleware(['auth:web']);


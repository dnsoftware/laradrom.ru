<?php

use App\Containers\PinSection\PinTag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('pintags/store', [Controller::class, 'store'])
    ->name('web_pintag_store')
    ->middleware(['auth:web']);


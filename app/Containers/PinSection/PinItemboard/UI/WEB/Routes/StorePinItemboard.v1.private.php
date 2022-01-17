<?php

use App\Containers\PinSection\PinItemboard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('pinitemboards/store', [Controller::class, 'store'])
    ->name('web_pinitemboard_store')
    ->middleware(['auth:web']);


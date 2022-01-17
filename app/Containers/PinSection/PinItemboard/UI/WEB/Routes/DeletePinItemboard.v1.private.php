<?php

use App\Containers\PinSection\PinItemboard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('pinitemboards/{id}', [Controller::class, 'destroy'])
    ->name('web_pinitemboard_destroy')
    ->middleware(['auth:web']);


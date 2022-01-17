<?php

use App\Containers\PinSection\PinItemboard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitemboards', [Controller::class, 'index'])
    ->name('web_pinitemboard_index')
    ->middleware(['auth:web']);


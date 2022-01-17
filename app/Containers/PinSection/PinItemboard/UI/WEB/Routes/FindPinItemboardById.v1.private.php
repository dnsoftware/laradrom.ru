<?php

use App\Containers\PinSection\PinItemboard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitemboards/{id}', [Controller::class, 'show'])
    ->name('web_pinitemboard_show')
    ->middleware(['auth:web']);


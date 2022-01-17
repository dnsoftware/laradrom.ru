<?php

use App\Containers\PinSection\PinItemboard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('pinitemboards/{id}', [Controller::class, 'update'])
    ->name('web_pinitemboard_update')
    ->middleware(['auth:web']);


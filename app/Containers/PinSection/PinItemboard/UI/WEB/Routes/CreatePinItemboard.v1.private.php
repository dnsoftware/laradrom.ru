<?php

use App\Containers\PinSection\PinItemboard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitemboards/create', [Controller::class, 'create'])
    ->name('web_pinitemboard_create')
    ->middleware(['auth:web']);


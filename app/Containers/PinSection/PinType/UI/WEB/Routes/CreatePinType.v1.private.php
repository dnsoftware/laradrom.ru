<?php

use App\Containers\PinSection\PinType\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintypes/create', [Controller::class, 'create'])
    ->name('web_pintype_create')
    ->middleware(['auth:web']);


<?php

use App\Containers\PinSection\PinTag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintags/create', [Controller::class, 'create'])
    ->name('web_pintag_create')
    ->middleware(['auth:web']);


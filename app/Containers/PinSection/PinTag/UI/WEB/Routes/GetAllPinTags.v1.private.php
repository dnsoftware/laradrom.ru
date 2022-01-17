<?php

use App\Containers\PinSection\PinTag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintags', [Controller::class, 'index'])
    ->name('web_pintag_index')
    ->middleware(['auth:web']);


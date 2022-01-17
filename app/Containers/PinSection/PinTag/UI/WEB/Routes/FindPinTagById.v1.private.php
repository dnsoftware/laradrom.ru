<?php

use App\Containers\PinSection\PinTag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintags/{id}', [Controller::class, 'show'])
    ->name('web_pintag_show')
    ->middleware(['auth:web']);


<?php

use App\Containers\PinSection\PinTag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('pintags/{id}', [Controller::class, 'destroy'])
    ->name('web_pintag_destroy')
    ->middleware(['auth:web']);


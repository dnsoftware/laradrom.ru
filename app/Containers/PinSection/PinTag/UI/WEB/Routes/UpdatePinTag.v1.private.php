<?php

use App\Containers\PinSection\PinTag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('pintags/{id}', [Controller::class, 'update'])
    ->name('web_pintag_update')
    ->middleware(['auth:web']);


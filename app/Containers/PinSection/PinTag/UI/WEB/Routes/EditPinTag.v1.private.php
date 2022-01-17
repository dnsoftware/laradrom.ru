<?php

use App\Containers\PinSection\PinTag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintags/{id}/edit', [Controller::class, 'edit'])
    ->name('web_pintag_edit')
    ->middleware(['auth:web']);


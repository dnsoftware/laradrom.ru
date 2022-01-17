<?php

use App\Containers\PinSection\PinType\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintypes/{id}/edit', [Controller::class, 'edit'])
    ->name('web_pintype_edit')
    ->middleware(['auth:web']);


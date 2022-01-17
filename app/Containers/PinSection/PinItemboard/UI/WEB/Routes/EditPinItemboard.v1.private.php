<?php

use App\Containers\PinSection\PinItemboard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitemboards/{id}/edit', [Controller::class, 'edit'])
    ->name('web_pinitemboard_edit')
    ->middleware(['auth:web']);


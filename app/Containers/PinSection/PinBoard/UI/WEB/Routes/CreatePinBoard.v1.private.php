<?php

use App\Containers\PinSection\PinBoard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinboards/create', [Controller::class, 'create'])
    ->name('web_pinboard_create')
    ->middleware(['auth:web']);


<?php

use App\Containers\PinSection\PinBoard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinboards', [Controller::class, 'index'])
    ->name('web_pinboard_index')
    ->middleware(['auth:web']);


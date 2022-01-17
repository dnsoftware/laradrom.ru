<?php

use App\Containers\PinSection\PinBoard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('pinboards/store', [Controller::class, 'store'])
    ->name('web_pinboard_store')
    ->middleware(['auth:web']);


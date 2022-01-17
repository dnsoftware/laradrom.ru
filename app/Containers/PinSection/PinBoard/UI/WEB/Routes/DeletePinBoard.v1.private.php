<?php

use App\Containers\PinSection\PinBoard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('pinboards/{id}', [Controller::class, 'destroy'])
    ->name('web_pinboard_destroy')
    ->middleware(['auth:web']);


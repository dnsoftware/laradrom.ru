<?php

use App\Containers\PinSection\PinBoard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinboards/{id}', [Controller::class, 'show'])
    ->name('web_pinboard_show')
    ->middleware(['auth:web']);


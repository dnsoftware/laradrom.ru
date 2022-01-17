<?php

use App\Containers\PinSection\PinBoard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('pinboards/{id}', [Controller::class, 'update'])
    ->name('web_pinboard_update')
    ->middleware(['auth:web']);


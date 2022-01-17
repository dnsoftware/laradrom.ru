<?php

use App\Containers\PinSection\PinBoard\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinboards/{id}/edit', [Controller::class, 'edit'])
    ->name('web_pinboard_edit')
    ->middleware(['auth:web']);


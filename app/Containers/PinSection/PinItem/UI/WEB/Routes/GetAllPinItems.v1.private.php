<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems', [Controller::class, 'index'])
    ->name('web_pinitem_index')
    ->middleware(['auth:web']);


<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('pinitems/store', [Controller::class, 'store'])
    ->name('web_pinitem_store')
    ->middleware(['auth:web']);


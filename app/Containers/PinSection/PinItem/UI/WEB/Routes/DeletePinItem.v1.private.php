<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('pinitems/{id}', [Controller::class, 'destroy'])
    ->name('web_pinitem_destroy')
    ->middleware(['auth:web']);


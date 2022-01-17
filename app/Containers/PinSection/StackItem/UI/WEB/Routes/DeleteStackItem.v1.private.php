<?php

use App\Containers\PinSection\StackItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('stackitems/{id}', [Controller::class, 'destroy'])
    ->name('web_stackitem_destroy')
    ->middleware(['auth:web']);


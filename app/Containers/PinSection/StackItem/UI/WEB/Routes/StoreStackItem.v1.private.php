<?php

use App\Containers\PinSection\StackItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('stackitems/store', [Controller::class, 'store'])
    ->name('web_stackitem_store')
    ->middleware(['auth:web']);


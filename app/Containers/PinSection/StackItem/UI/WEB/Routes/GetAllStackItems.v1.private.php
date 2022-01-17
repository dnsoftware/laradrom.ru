<?php

use App\Containers\PinSection\StackItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('stackitems', [Controller::class, 'index'])
    ->name('web_stackitem_index')
    ->middleware(['auth:web']);


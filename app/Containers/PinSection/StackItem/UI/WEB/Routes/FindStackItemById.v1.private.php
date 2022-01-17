<?php

use App\Containers\PinSection\StackItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('stackitems/{id}', [Controller::class, 'show'])
    ->name('web_stackitem_show')
    ->middleware(['auth:web']);


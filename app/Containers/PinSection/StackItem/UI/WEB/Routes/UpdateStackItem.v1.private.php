<?php

use App\Containers\PinSection\StackItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('stackitems/{id}', [Controller::class, 'update'])
    ->name('web_stackitem_update')
    ->middleware(['auth:web']);


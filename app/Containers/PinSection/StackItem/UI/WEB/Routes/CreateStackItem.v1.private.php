<?php

use App\Containers\PinSection\StackItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('stackitems/create', [Controller::class, 'create'])
    ->name('web_stackitem_create')
    ->middleware(['auth:web']);


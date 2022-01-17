<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems/create', [Controller::class, 'create'])
    ->name('web_pinitem_create')
    ->middleware(['auth:web']);


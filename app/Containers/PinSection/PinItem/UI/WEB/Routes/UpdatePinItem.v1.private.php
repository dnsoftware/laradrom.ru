<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('pinitems/{id}', [Controller::class, 'update'])
    ->name('web_pinitem_update')
    ->middleware(['auth:web']);


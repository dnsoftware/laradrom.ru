<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pin/{id}/edit', [Controller::class, 'edit'])
    ->name('web_pinitem_edit')
    ->middleware(['auth:web']);


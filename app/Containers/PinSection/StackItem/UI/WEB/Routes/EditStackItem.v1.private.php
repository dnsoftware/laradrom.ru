<?php

use App\Containers\PinSection\StackItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('stackitems/{id}/edit', [Controller::class, 'edit'])
    ->name('web_stackitem_edit')
    ->middleware(['auth:web']);


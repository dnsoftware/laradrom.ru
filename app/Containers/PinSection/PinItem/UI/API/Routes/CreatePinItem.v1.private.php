<?php

use App\Containers\PinSection\PinItem\UI\API\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems/create', [Controller::class, 'create'])
    ->middleware(['auth:sanctum'])
    ->name('web_pinitem_create');


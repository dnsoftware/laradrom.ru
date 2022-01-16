<?php

use App\Containers\PinSection\PinItemMain\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems/create', [Controller::class, 'create'])
    ->name('web_pinitemmain_create')
    ->middleware(['auth:web']);


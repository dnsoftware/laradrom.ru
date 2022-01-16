<?php

use App\Containers\PinSection\PinItemMain\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems', [Controller::class, 'index'])
    ->name('web_pinitemmain_index')
    ->middleware(['auth:web']);


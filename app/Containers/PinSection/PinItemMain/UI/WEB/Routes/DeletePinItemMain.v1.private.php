<?php

use App\Containers\PinSection\PinItemMain\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('pinitems/{id}', [Controller::class, 'destroy'])
    ->name('web_pinitemmain_destroy')
    ->middleware(['auth:web']);


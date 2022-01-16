<?php

use App\Containers\PinSection\PinItemMain\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('pinitems/store', [Controller::class, 'store'])
    ->name('web_pinitemmain_store')
    ->middleware(['auth:web']);


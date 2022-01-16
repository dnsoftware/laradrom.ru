<?php

use App\Containers\PinSection\PinItemMain\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('pinitems/{id}', [Controller::class, 'update'])
    ->name('web_pinitemmain_update')
    ->middleware(['auth:web']);


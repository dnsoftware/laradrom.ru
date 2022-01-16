<?php

use App\Containers\PinSection\PinItemMain\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems/{id}', [Controller::class, 'show'])
    ->name('web_pinitemmain_show')
    ->middleware(['auth:web']);


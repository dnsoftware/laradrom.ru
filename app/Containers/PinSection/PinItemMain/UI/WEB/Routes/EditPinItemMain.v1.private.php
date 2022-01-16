<?php

use App\Containers\PinSection\PinItemMain\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems/{id}/edit', [Controller::class, 'edit'])
    ->name('web_pinitemmain_edit')
    ->middleware(['auth:web']);


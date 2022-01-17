<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems/{id}/{slug}', [Controller::class, 'show'])
    ->name('web_pinitem_show');


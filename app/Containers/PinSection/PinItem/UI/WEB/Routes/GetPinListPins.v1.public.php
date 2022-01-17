<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinlist/{id}/{slug}', [Controller::class, 'pinList'])
    ->name('web_pinitem_pinlist');


<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintypes/{slug}/{stackItemSlug?}', [Controller::class, 'byPinTypes'])
    ->name('web_pinitem_bypintypes');


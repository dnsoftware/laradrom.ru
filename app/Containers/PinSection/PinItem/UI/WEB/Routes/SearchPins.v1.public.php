<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('search', [Controller::class, 'searchPins'])
    ->name('web_pinitem_search_pins');


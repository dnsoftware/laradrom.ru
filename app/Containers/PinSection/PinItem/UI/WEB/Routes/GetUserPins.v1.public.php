<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('userpinlist/{id}/{slug}', [Controller::class, 'userPinList'])
    ->name('web_pinitem_гuser_pin_list');


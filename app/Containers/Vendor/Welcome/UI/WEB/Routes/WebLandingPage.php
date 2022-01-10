<?php

use App\Containers\Vendor\Welcome\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

// http://apiato.test
Route::get('/', [Controller::class, 'sayWelcome'])
    ->name('web_welcome_say_welcome');

Route::get('{page}', [\App\Http\Controllers\MainController::class, '__invoke'])->where('page', '.*');

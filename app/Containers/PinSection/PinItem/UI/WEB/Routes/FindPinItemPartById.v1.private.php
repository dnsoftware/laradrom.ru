<?php

use App\Containers\PinSection\PinItem\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitempart/{id}', [Controller::class, 'show_part'])
    ->name('web_pinitempart_show');


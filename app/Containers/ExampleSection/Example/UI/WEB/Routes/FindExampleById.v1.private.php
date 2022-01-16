<?php

use App\Containers\ExampleSection\Example\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('examples/{id}', [Controller::class, 'show'])
    ->name('web_example_show')
    ->middleware(['auth:web']);


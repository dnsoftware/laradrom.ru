<?php

use App\Containers\ExampleSection\Example\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('examples', [Controller::class, 'index'])
    ->name('web_example_index')
    ->middleware(['auth:web']);


<?php

use App\Containers\ExampleSection\Example\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('examples/{id}', [Controller::class, 'destroy'])
    ->name('web_example_destroy')
    ->middleware(['auth:web']);


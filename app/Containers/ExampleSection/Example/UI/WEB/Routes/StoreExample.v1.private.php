<?php

use App\Containers\ExampleSection\Example\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('examples/store', [Controller::class, 'store'])
    ->name('web_example_store')
    ->middleware(['auth:web']);


<?php

use App\Containers\ExampleSection\Example\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('examples/create', [Controller::class, 'create'])
    ->name('web_example_create')
    ->middleware(['auth:web']);


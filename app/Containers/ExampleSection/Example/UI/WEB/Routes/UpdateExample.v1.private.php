<?php

use App\Containers\ExampleSection\Example\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('examples/{id}', [Controller::class, 'update'])
    ->name('web_example_update')
    ->middleware(['auth:web']);


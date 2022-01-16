<?php

use App\Containers\ExampleSection\Example\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('examples/{id}/edit', [Controller::class, 'edit'])
    ->name('web_example_edit')
    ->middleware(['auth:web']);


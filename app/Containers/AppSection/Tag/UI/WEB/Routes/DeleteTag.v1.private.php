<?php

use App\Containers\AppSection\Tag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::delete('tags/{id}', [Controller::class, 'destroy'])
    ->name('web_tag_destroy')
    ->middleware(['auth:web']);


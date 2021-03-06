<?php

use App\Containers\AppSection\Tag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('tags', [Controller::class, 'index'])
    ->name('web_tag_index')
    ->middleware(['auth:web']);


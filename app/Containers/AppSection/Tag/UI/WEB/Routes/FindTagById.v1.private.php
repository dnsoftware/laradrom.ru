<?php

use App\Containers\AppSection\Tag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('tags/{id}', [Controller::class, 'show'])
    ->name('web_tag_show')
    ->middleware(['auth:web']);


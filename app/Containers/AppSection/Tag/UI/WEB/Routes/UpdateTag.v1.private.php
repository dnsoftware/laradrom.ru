<?php

use App\Containers\AppSection\Tag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('tags/{id}', [Controller::class, 'update'])
    ->name('web_tag_update')
    ->middleware(['auth:web']);


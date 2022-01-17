<?php

use App\Containers\AppSection\Tag\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::post('tags/store', [Controller::class, 'store'])
    ->name('web_tag_store')
    ->middleware(['auth:web']);


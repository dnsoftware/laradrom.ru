<?php

use App\Containers\UserSection\User\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('user/{id}/{slug}', [Controller::class, 'userProfile'])
    ->name('web_user_user_profile');


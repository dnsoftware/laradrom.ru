<?php

use App\Containers\AppSection\Common\UI\WEB\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('utils/dbclearandseed', [Controller::class, 'dbClearAndSeed'])
    //->withoutMiddleware('auth')
    //->middleware(['auth:web'])
    ->name('web_common_db_clear_and_seed');


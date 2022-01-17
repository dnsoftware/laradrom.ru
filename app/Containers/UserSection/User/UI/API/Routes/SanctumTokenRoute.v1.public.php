<?php

/**
 * @apiGroup           User
 * @apiName            SanctumToken
 *
 * @api                {GET} /v1/sanctum/token Endpoint title here..
 * @apiDescription     Endpoint description here..
 *
 * @apiVersion         1.0.0
 * @apiPermission      none
 *
 * @apiParam           {String}  parameters here..
 *
 * @apiSuccessExample  {json}  Success-Response:
 * HTTP/1.1 200 OK
{
  // Insert the response of the request here...
}
 */

use Illuminate\Support\Facades\Route;
use App\Containers\UserSection\User\UI\API\Controllers\TokenController;
use App\Containers\UserSection\User\UI\API\Controllers\AuthController;

Route::post('sanctum/token', [TokenController::class, 'index'])
    ->name('api_user_sanctum_token');

Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/users/auth', [AuthController::class, 'index']);
});


<?php

/**
 * @apiGroup           User
 * @apiName            getUserProfile
 *
 * @api                {GET} /v1/person/profile Endpoint title here..
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

use App\Containers\UserSection\User\UI\API\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('person/profile', [Controller::class, 'getUserProfile'])
    ->name('api_user_get_user_profile')
    ->middleware(['auth:sanctum'])
;


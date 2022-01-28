<?php

/**
 * @apiGroup           PinType
 * @apiName            getById
 *
 * @api                {GET} /v1/pintype/:id Endpoint title here..
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

use App\Containers\PinSection\PinType\UI\API\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pintypes/{id}', [Controller::class, 'getById'])
    //->middleware(['auth:api'])
    ->name('api_pintypes_get_by_id');


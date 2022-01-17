<?php

/**
 * @apiGroup           PinItem
 * @apiName            show
 *
 * @api                {GET} /v1/pinitems/:id Endpoint title here..
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

use App\Containers\PinSection\PinItem\UI\API\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::get('pinitems/{id}', [Controller::class, 'show'])
    ->name('api_pinitem_show');


<?php

/**
 * @apiGroup           PinItemMain
 * @apiName            updatePinItemMain
 *
 * @api                {PATCH} /v1/pinitems/:id Endpoint title here..
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

use App\Containers\PinSection\PinItemMain\UI\API\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('pinitems/{id}', [Controller::class, 'updatePinItemMain'])
    ->name('api_pinitemmain_update_pin_item_main')
    ->middleware(['auth:api']);


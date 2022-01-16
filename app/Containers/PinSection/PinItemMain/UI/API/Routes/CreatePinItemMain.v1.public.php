<?php

/**
 * @apiGroup           PinItemMain
 * @apiName            createPinItemMain
 *
 * @api                {POST} /v1/pinitems Endpoint title here..
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

Route::post('pinitems', [Controller::class, 'createPinItemMain'])
    ->name('api_pinitemmain_create_pin_item_main')
    ->middleware(['auth:api']);


<?php

/**
 * @apiGroup           PinItemMain
 * @apiName            getAllPinItemMains
 *
 * @api                {GET} /v1/pinitems Endpoint title here..
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

Route::get('pinitems', [Controller::class, 'getPinItems'])
    //->middleware(['auth:api'])
    ->name('api_pinitemmain_get_pin_items');


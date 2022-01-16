<?php

/**
 * @apiGroup           Example
 * @apiName            updateExample
 *
 * @api                {PATCH} /v1/examples/:id Endpoint title here..
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

use App\Containers\ExampleSection\Example\UI\API\Controllers\Controller;
use Illuminate\Support\Facades\Route;

Route::patch('examples/{id}', [Controller::class, 'updateExample'])
    ->name('api_example_update_example')
    ->middleware(['auth:api']);


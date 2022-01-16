<?php

/**
 * @apiGroup           Example
 * @apiName            createExample
 *
 * @api                {POST} /v1/examples Endpoint title here..
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

Route::post('examples', [Controller::class, 'createExample'])
    ->name('api_example_create_example')
    ->middleware(['auth:api']);


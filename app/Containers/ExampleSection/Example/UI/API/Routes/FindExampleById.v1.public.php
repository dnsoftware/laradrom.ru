<?php

/**
 * @apiGroup           Example
 * @apiName            findExampleById
 *
 * @api                {GET} /v1/examples/:id Endpoint title here..
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

Route::get('examples/{id}', [Controller::class, 'findExampleById'])
    ->name('api_example_find_example_by_id')
    ->middleware(['auth:api']);


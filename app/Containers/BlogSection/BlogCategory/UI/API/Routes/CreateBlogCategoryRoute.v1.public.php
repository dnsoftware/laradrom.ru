<?php

/**
 * @apiGroup           BlogCategory
 * @apiName            create
 *
 * @api                {POST} /v1/blog/categories/create Endpoint title here..
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

use App\Containers\BlogSection\BlogCategory\UI\API\Controllers\BlogCategoryController;
use Illuminate\Support\Facades\Route;

Route::get('blog/categories/create', [BlogCategoryController::class, 'create'])
    ->name('api_blogcategory_create')
    ->middleware(['auth:sanctum'])
;


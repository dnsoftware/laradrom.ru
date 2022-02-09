<?php

namespace App\Ship\Parents\Controllers;

use Apiato\Core\Abstracts\Controllers\ApiController as AbstractApiController;
use League\Fractal\Manager;
use League\Fractal\Serializer\DataArraySerializer;
use League\Fractal\Serializer\JsonApiSerializer;

abstract class ApiController extends AbstractApiController
{
    protected string $apiBaseUrl;
    protected Manager $manager;

    public function __construct()
    {
        $this->apiBaseUrl = config('app.api_url').'/v1';
        $this->manager = new Manager();
        $this->manager->setSerializer(new DataArraySerializer());
    }

}

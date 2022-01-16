<?php

namespace App\Containers\ExampleSection\Example\UI\API\Transformers;

use App\Containers\ExampleSection\Example\Models\Example;
use App\Ship\Parents\Transformers\Transformer;

class ExampleTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $defaultIncludes = [

    ];

    /**
     * @var  array
     */
    protected $availableIncludes = [

    ];

    public function transform(Example $example): array
    {
        $response = [
            'object' => $example->getResourceKey(),
            'id' => $example->getHashedKey(),
            'created_at' => $example->created_at,
            'updated_at' => $example->updated_at,
            'readable_created_at' => $example->created_at->diffForHumans(),
            'readable_updated_at' => $example->updated_at->diffForHumans(),

        ];

        return $response = $this->ifAdmin([
            'real_id'    => $example->id,
            // 'deleted_at' => $example->deleted_at,
        ], $response);
    }
}

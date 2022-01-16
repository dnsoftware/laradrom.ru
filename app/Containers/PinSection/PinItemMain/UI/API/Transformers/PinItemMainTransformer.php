<?php

namespace App\Containers\PinSection\PinItemMain\UI\API\Transformers;

use App\Containers\PinSection\PinItemMain\Models\PinItemMain;
use App\Ship\Parents\Transformers\Transformer;

class PinItemMainTransformer extends Transformer
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

    public function transform(PinItemMain $pinitemmain): array
    {
        $response = [
            'object' => $pinitemmain->getResourceKey(),
            'id' => $pinitemmain->getHashedKey(),
            'created_at' => $pinitemmain->created_at,
            'updated_at' => $pinitemmain->updated_at,
            'readable_created_at' => $pinitemmain->created_at->diffForHumans(),
            'readable_updated_at' => $pinitemmain->updated_at->diffForHumans(),

        ];

        return $response = $this->ifAdmin([
            'real_id'    => $pinitemmain->id,
            // 'deleted_at' => $pinitemmain->deleted_at,
        ], $response);
    }
}

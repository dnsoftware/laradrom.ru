<?php

namespace App\Containers\PinSection\PinType\UI\API\Transformers;

use App\Containers\PinSection\PinType\Data\POPO\PinType;
use League\Fractal\TransformerAbstract;

class JsonApiPinTypeTransformer extends TransformerAbstract
{
    public function transform(PinType $pinType)
    {
        return [

            'id' => $pinType->id,
            'name' => $pinType->name,
            'description' => $pinType->description,
            'pinCount' => $pinType->pinCount,
            'slug' => $pinType->slug,
            'orderNum' => $pinType->orderNum,
            'backColor' => $pinType->backColor,

            'links'   => [

            ],
        ];
    }
}

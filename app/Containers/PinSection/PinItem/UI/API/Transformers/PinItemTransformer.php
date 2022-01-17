<?php

namespace App\Containers\PinSection\PinItem\UI\API\Transformers;

use App\Containers\PinSection\PinItem\Models\PinItem;
use App\Ship\Parents\Transformers\Transformer;

class PinItemTransformer extends Transformer
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

    public function transform(PinItem $pinitem): array
    {
        $response = [
            'object' => $pinitem->getResourceKey(),
            'id' => $pinitem->getHashedKey(),
            'user_id' => $pinitem->user_id,
            'pintype_id' => $pinitem->pintype_id,
            'title' => $pinitem->title,
            'slug' => $pinitem->slug,
            'essence' => $pinitem->essence,
            'content' => $pinitem->content,
            'target_link' => $pinitem->target_link,
            'image' => $pinitem->image,
            'is_published' => $pinitem->is_published,
            'created_at' => $pinitem->created_at,
            'updated_at' => $pinitem->updated_at,
            'deleted_at' => $pinitem->deleted_at,
            'readable_created_at' => $pinitem->created_at->diffForHumans(),
            'readable_updated_at' => $pinitem->updated_at->diffForHumans(),

        ];

        return $response = $this->ifAdmin([
            'real_id'    => $pinitem->id,
            // 'deleted_at' => $pinitem->deleted_at,
        ], $response);
    }
}

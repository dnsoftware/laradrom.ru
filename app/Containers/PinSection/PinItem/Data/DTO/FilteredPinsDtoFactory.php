<?php

namespace App\Containers\PinSection\PinItem\Data\DTO;

use App\Containers\PinSection\PinItem\UI\WEB\Requests\FilteredPinsRequest;

class FilteredPinsDtoFactory
{
    public static function fromRequest(FilteredPinsRequest $request, ...$params)
    {
        $dto = new FilteredPinsDto();

        if (\Auth::user()) {
            $dto->currentUserId = \Auth::user()->id;
        }

        foreach ($params as $pkey => $pval) {
            $dto->$pkey = $pval;
        }

        return $dto;
    }
}

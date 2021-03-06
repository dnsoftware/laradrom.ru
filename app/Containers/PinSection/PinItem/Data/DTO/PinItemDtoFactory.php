<?php

namespace App\Containers\PinSection\PinItem\Data\DTO;

use App\Ship\Parents\Requests\Request;

class PinItemDtoFactory
{
    public function fromArray(array $data)
    {
        $dto = new PinItemDto();

        $property_list = get_class_vars(PinItemDto::class);
        foreach ($property_list as $property => $pval) {
            if (isset($data[$property])) {
                $dto->$property = $data[$property];
            }

        }

        return $dto;

    }

    public function fromRequest(Request $request)
    {
        $data = $request->validated();

        return $this->fromArray($data);
    }
}

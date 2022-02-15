<?php

namespace App\Containers\BlogSection\BlogCategory\Data\DTO;

use App\Ship\Parents\Requests\Request;

class BlogCategoryDtoFactory
{
    public function fromArray(array $data): BlogCategoryDto
    {
        $dto = new BlogCategoryDto();

        $property_list = get_class_vars(BlogCategoryDto::class);
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

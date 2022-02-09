<?php

namespace App\Containers\BlogSection\BlogCategory\Data\Factories;

use App\Containers\BlogSection\BlogCategory\Models\BlogCategoryRead;
use App\Ship\Parents\Factories\Factory;

class BlogCategoryReadFactory extends Factory
{
    protected $model = BlogCategoryRead::class;

    public function definition()
    {
        return [
            'id' => $this->faker->unique()->randomNumber(5, false),
            'userId' => $this->faker->unique()->randomNumber(5, false),
            'name' => $this->faker->name(),
        ];

    }
}

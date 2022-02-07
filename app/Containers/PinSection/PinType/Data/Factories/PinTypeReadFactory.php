<?php

namespace App\Containers\PinSection\PinType\Data\Factories;

use App\Containers\PinSection\PinType\Models\PinTypeRead;
use App\Ship\Parents\Factories\Factory;

class PinTypeReadFactory extends Factory
{
    protected $model = PinTypeRead::class;

    public function definition()
    {
        $name = $this->faker->name();
        $slug = \Str::slug($name);
        $back_color = str_replace('#', '', $this->faker->hexColor());

        return [
            'id' => $this->faker->unique()->randomNumber(5, false),
            'name' => $name,
            'email' => $this->faker->unique()->safeEmail(),
            'description' => $this->faker->text(),
            'pin_count' => 0,
            'slug' => $slug,
            'order_num' => $this->faker->randomNumber(3, false),
            'back_color' => $back_color
        ];

    }
}

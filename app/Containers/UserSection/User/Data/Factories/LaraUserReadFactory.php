<?php

namespace App\Containers\UserSection\User\Data\Factories;

use App\Containers\UserSection\User\Models\LaraUserRead;
use App\Ship\Parents\Factories\Factory;

class LaraUserReadFactory extends Factory
{
    protected $model = LaraUserRead::class;

    public function definition()
    {
        $name = $this->faker->name();
        $profilePhoto = \Str::slug($name).'.png';

        $model = [
            'id' => $this->faker->unique()->randomNumber(5, false),
            'name' => $name,
            'email' => $this->faker->unique()->safeEmail(),
            'current_team_id' => $this->faker->unique()->randomNumber(2, false),
            'profile_photo_path' => '/photo/path/'.$profilePhoto,
        ];

        return $model;
    }

}

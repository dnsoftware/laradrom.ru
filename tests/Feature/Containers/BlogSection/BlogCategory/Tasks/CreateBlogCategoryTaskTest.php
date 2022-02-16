<?php

namespace Tests\Feature\Containers\BlogSection\BlogCategory\Tasks;

use App\Containers\BlogSection\BlogCategory\Data\Commands\BlogCategoryCommands;
use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDtoFactory;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Models\User;
use Faker\Factory;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CreateBlogCategoryTaskTest extends TestCase
{
    use RefreshDatabase;
    public $seeder = 'DatabaseSeeder';

    public function test_example()
    {
        $user = User::factory()->create();
        $this->actingAs($user);
        $userId = auth()->user()->id;
        $faker = Factory::create();
        $name = $faker->name;

        $dto = (new BlogCategoryDtoFactory)->fromArray([
            'userId' => $userId,
            'name' => $name
        ]);

        $item = app(CreateBlogCategoryTask::class)->run($dto);

        $this->assertEquals($item->userId, $userId);
        $this->assertEquals($item->name, $name);

    }
}

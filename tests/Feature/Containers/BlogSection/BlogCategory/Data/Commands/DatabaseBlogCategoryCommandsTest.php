<?php

namespace Tests\Feature\Containers\BlogSection\BlogCategory\Data\Commands;

use App\Containers\BlogSection\BlogCategory\Data\Commands\BlogCategoryCommands;
use App\Containers\BlogSection\BlogCategory\Data\Commands\DatabaseBlogCategoryCommands;
use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDtoFactory;
use App\Containers\BlogSection\BlogCategory\Data\Factories\BlogCategoryPopoFactory;
use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Models\User;
use Faker\Factory;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class DatabaseBlogCategoryCommandsTest extends TestCase
{
    use RefreshDatabase;
    public $seeder = 'DatabaseSeeder';

    private array $structure;

    public function setUp(): void
    {
        parent::setUp();
        $this->structure = BlogCategory::getStructure();
    }


    public function test_command_create()
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
        $item = app(BlogCategoryCommands::class)->create($dto);

        $this->assertEquals($item->userId, $userId);
        $this->assertEquals($item->name, $name);
        $this->assertArrayKeysMatching((array)$item, $this->structure, 'Различная структура объектов BlogCategoryPopo');

    }
}

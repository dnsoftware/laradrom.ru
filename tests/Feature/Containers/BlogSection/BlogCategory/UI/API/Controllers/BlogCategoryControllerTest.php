<?php

namespace Tests\Feature\Containers\BlogSection\BlogCategory\UI\API\Controllers;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDtoFactory;
use App\Containers\BlogSection\BlogCategory\Data\Seeders\BlogCategorySeeder;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Testing\Fluent\AssertableJson;
use Tests\TestCase;

class BlogCategoryControllerTest extends TestCase
{
    use RefreshDatabase;
    public $seeder = 'DatabaseSeeder';

    private $user;
    private $headers;

    public function setUp(): void
    {
        parent::setUp();

        $this->user = User::factory()->create();
        $this->actingAs($this->user);
    }

    // открытие страницы создания поста
    public function test_create_request_200()
    {
        app(BlogCategorySeeder::class)->run($this->user->id);

        $response = $this->getJson($this->apiUrl('v1').'/blog/categories/create');

        $response->assertStatus(200);
    }

    // получение каталога для создания поста
    public function test_create_request_categories_data()
    {
        app(BlogCategorySeeder::class)->run($this->user->id);
        $response = $this->getJson($this->apiUrl('v1').'/blog/categories/create', []);

        $response->assertStatus(200)
            ->assertJson(fn (AssertableJson $json) =>
                $json->has('categories')
            );

    }



    // создание категории
    public function test_store_request_200()
    {
        $response = $this->postJson($this->apiUrl('v1').'/blog/categories', [
            'name' => 'Вася'
        ]);
        $response->assertStatus(200);
    }


    // непрохождение валидации полей
    public function test_store_request_categories_data()
    {
        $response = $this->postJson($this->apiUrl('v1').'/blog/categories', []);
        $response->assertStatus(422)
            ->assertJson([
                'message' => 'The given data was invalid.'
            ]);

    }


    // Ответ 200 и создание категории
    public function test_update_request_200()
    {
        $item = $this->addCategory();

        $response = $this->patchJson($this->apiUrl('v1').'/blog/categories/' . $item->id, [
            'name' => 'Вася'
        ]);

        $response->assertStatus(200)
                 ->assertJson([
                'name' => 'Вася'
        ]);
    }

    // проверка обновления не своего поста
    public function test_noauthorized_update_category()
    {
        $item = $this->addCategory();

        $this->user = User::factory()->create([
            'id' => '999999'
        ]);
        $this->actingAs($this->user);
        $response = $this->patchJson($this->apiUrl('v1').'/blog/categories/' . $item->id, [
            'name' => 'Вася'
        ]);

        $response->dump();

        $response->assertStatus(401);
        $response->assertJson([
            'type' => 'noauthUpdate'
        ]);
    }



    // создание категории
    public function addCategory()
    {
        $dto = (new BlogCategoryDtoFactory)->fromArray([
            'userId' => $this->user->id,
            'name' => 'Test'
        ]);
        $item = app(CreateBlogCategoryTask::class)->run($dto);

        return $item;
    }

}

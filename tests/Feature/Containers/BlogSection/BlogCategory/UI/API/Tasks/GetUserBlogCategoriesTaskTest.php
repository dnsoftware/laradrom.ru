<?php

namespace Tests\Feature\Containers\BlogSection\BlogCategory\UI\API\Tasks;

use App\Containers\BlogSection\BlogCategory\Data\DTO\BlogCategoryDtoFactory;
use App\Containers\BlogSection\BlogCategory\Data\POPO\Collections\BlogCategoryCollection;
use App\Containers\BlogSection\BlogCategory\Models\BlogCategoryWrite;
use App\Containers\BlogSection\BlogCategory\Tasks\CreateBlogCategoryTask;
use App\Containers\BlogSection\BlogCategory\Tasks\GetUserBlogCategoriesTask;
use App\Models\User;
use App\Ship\Exceptions\AuthenticationException;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class GetUserBlogCategoriesTaskTest extends TestCase
{
    use RefreshDatabase;
    public $seeder = 'DatabaseSeeder';


    public function test_get_user_categories_task()
    {
        $user = User::factory()->create();
        $this->actingAs($user);

        $userId = auth()->user()->id;
        if(!$userId = auth()->user()->id) {
            throw new  AuthenticationException('Not authenticate');
        }

        $dto = (new BlogCategoryDtoFactory)->fromArray([
            'userId' => $userId,
            'name' => 'Тест'
        ]);

        $item = app(CreateBlogCategoryTask::class)->run($dto);

        $categories = app(GetUserBlogCategoriesTask::class)->run($userId);

        $this->assertInstanceOf(BlogCategoryCollection::class, $categories);
        $this->assertTrue($categories->count() > 0);
    }
}

<?php

namespace Tests\Unit\Containers\BlogSection\BlogCategory\Data\Factories;

use App\Containers\BlogSection\BlogCategory\Data\Factories\BlogCategoryPopoFactory;
use App\Containers\BlogSection\BlogCategory\Data\Factories\BlogCategoryReadFactory;
use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Containers\BlogSection\BlogCategory\Data\POPO\Collections\BlogCategoryCollection;
use Illuminate\Database\Eloquent\Collection;
use Tests\TestCase;

class BlogCategoryFactoryTest extends TestCase
{
    private array $structure;

    public function setUp(): void
    {
        parent::setUp();
        $this->structure = BlogCategory::getStructure();
    }


    // Проверка совпадения структуры
    public function test_checking_the_structure_match()
    {
        $simple = (array) app(BlogCategoryPopoFactory::class)->createSimple();
        $this->assertArrayKeysMatching($simple, $this->structure, 'Различная структура объектов BlogCategoryPopo');
    }

    public function test_check_blog_category_object()
    {

        $itemRead = app(BlogCategoryReadFactory::class)->make();
        $itemPopoFactory = new BlogCategoryPopoFactory();
        $blogCategory = $itemPopoFactory->createFromEloquent($itemRead);
        $this->assertInstanceOf(BlogCategory::class, $blogCategory);

        $this->assertArrayKeysMatching((array) $blogCategory, $this->structure, 'Различная структура объектов BlogCategoryPopo');

        $this->expectException(\TypeError::class);
        $blogCategory = $itemPopoFactory->createFromEloquent('');
    }


    public function test_check_blog_category_collection_object()
    {
        $eloquentCollection = app(BlogCategoryReadFactory::class)->count(5)->make();
        $this->assertInstanceOf(Collection::class, $eloquentCollection);

        $blogCategoryCollection = app(BlogCategoryPopoFactory::class)->createCollectionFromEloquent($eloquentCollection);
        $this->assertInstanceOf(BlogCategoryCollection::class, $blogCategoryCollection);
    }


}

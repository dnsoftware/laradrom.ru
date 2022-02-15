<?php

namespace Tests\Unit\Containers\UserSection\User\Data\POPO;

use App\Containers\BlogSection\BlogCategory\Data\POPO\BlogCategory;
use App\Containers\PinSection\PinType\Data\Factories\PinTypePopoFactory;
use App\Containers\UserSection\User\Data\Factories\LaraUserPopoFactory;
use App\Containers\UserSection\User\Data\Factories\LaraUserReadFactory;
use App\Containers\UserSection\User\Data\POPO\LaraUser;
use Tests\TestCase;

class LaraUserFactoryTest extends TestCase
{
    private $structure ;

    public function setUp(): void
    {
        parent::setUp();
        $this->structure = LaraUser::getStructure();
    }


    // Проверка совпадения структуры
    public function test_checking_the_structure_match()
    {
        $simple = (array) app(LaraUserPopoFactory::class)->createSimple();
        $this->assertArrayKeysMatching($simple, $this->structure, 'Различная структура объектов LaraUserPopo');
    }

    public function test_check_lara_user_object()
    {
        $laraUserRead = app(LaraUserReadFactory::class)->make();
        $laraUserPopoFactory = new LaraUserPopoFactory();
        $laraUser = $laraUserPopoFactory->createFromEloquent($laraUserRead);
        $this->assertInstanceOf(LaraUser::class, $laraUser);

        $this->assertArrayKeysMatching((array) $laraUser, $this->structure, 'Различная структура объектов LaraUserPopo');

        $this->expectException(\TypeError::class);
        $pinType = $laraUserPopoFactory->createFromEloquent('');
    }

}


<?php

namespace Tests\Unit\Containers\PinSection\PinType\Data\Factories;

use App\Containers\PinSection\PinType\Data\Factories\PinTypePopoFactory;
use App\Containers\PinSection\PinType\Data\Factories\PinTypeReadFactory;
use App\Containers\PinSection\PinType\Data\POPO\Collections\PinTypeCollection;
use App\Containers\PinSection\PinType\Data\POPO\PinType;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Database\Eloquent\Collection;
use Tests\TestCase;

class PinTypeFactoryTest extends TestCase
{
    private array $structure = [
        'id' => null,
        'name' => null,
        'description' => null,
        'pinCount' => null,
        'slug' => null,
        'orderNum' => null,
        'backColor' => null,
    ];


    // Проверка совпадения структуры
    public function test_checking_the_structure_match()
    {
        $simple = (array) app(PinTypePopoFactory::class)->createSimple();
        $this->assertArrayKeysMatching($simple, $this->structure, 'Различная структура объектов PinTypePopo');
    }


    public function test_check_pin_type_object()
    {

        $pinTypeRead = app(PinTypeReadFactory::class)->make();
        $pinTypePopoFactory = new PinTypePopoFactory();
        $pinType = $pinTypePopoFactory->createFromEloquent($pinTypeRead);
        $this->assertInstanceOf(PinType::class, $pinType);

        $this->assertArrayKeysMatching((array) $pinType, $this->structure, 'Различная структура объектов PinTypePopo');

        $this->expectException(\TypeError::class);
        $pinType = $pinTypePopoFactory->createFromEloquent('');
    }


    public function test_check_pin_type_collection_object()
    {

        $eloquentCollection = app(PinTypeReadFactory::class)->count(5)->make();
        $this->assertInstanceOf(Collection::class, $eloquentCollection);

        $pinTypeCollection = app(PinTypePopoFactory::class)->createCollectionFromEloquent($eloquentCollection);
        $this->assertInstanceOf(PinTypeCollection::class, $pinTypeCollection);
    }

}

<?php

namespace Tests\Feature\Containers\PinSection\PinType\UI\API\Controllers;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class GetAllOrderedTest extends TestCase
{
    use RefreshDatabase;

    public $seeder = 'DatabaseSeeder';

    public function test_get_all_pintypes()
    {
        $response = $this->get($this->apiUrl('v1').'/pintypes');

        $response
            ->assertStatus(200)
            ->assertJson([
                'data' => [[
                    'id' => '1'
                ]]
            ]);

        $this->assertTrue(count($response->json('data')) > 0, 'Неправильное количество типов пинов');
    }
}

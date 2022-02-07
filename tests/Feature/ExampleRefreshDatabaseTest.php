<?php

namespace Tests\Feature;

use App\Containers\AppSection\Common\Tasks\DatabaseSeedByTestSqlDumpTask;
use App\Containers\AppSection\Common\Tasks\DropAllDatabaseTablesTask;
use App\Containers\PinSection\PinType\Models\PinType;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\DB;
use Tests\TestCase;

class ExampleRefreshDatabaseTest extends TestCase
{
    use RefreshDatabase;

    public $seeder = 'DatabaseSeeder';


    public function setUp(): void
    {
        parent::setUp();
    }


    public function testBasicTest()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }
}

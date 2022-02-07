<?php

namespace Tests\Feature\Containers\PinSection\PinItem\UI\API\Controllers;

use App\Models\User;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ControllerTest extends TestCase
{


    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_root_v1_path()
    {
        $user = User::factory()->create();

        $response = $this
            ->actingAs($user)
            ->get($this->apiUrl('v1'));

        $response
            ->assertStatus(200)
            ->assertJson([
                'Welcome to Laradrom (API V1)'
            ]);

    }


    public function test_open_pinitems_create_page()
    {
        $user = User::factory()->create();

        $response = $this
            ->actingAs($user)
            ->get($this->apiUrl().'/pinitems/create');

        $response
            ->assertStatus(200);

    }

    public function test_open_noauth_pinitems_create_page()
    {
        $this->expectException(AuthenticationException::class);

        $response = $this
            ->withoutExceptionHandling()
            ->get($this->apiUrl().'/pinitems/create');
    }


}

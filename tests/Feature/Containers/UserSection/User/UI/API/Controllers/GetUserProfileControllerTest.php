<?php

namespace Tests\Feature\Containers\UserSection\User\UI\API\Controllers;

use App\Containers\UserSection\User\Models\LaraUserRead;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class GetUserProfileControllerTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_get_user_profile_controller()
    {
        $user = LaraUserRead::factory()->make();

        $response = $this
            ->actingAs($user)
            ->get($this->apiUrl('v1').'/user/profile');

        $response
            ->assertStatus(200)
            ->assertJson([
                'id' => $user->id
            ]);

    }

}

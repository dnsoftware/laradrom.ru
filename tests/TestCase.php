<?php

namespace Tests;

use Illuminate\Foundation\Testing\TestCase as BaseTestCase;

abstract class TestCase extends BaseTestCase
{
    use CreatesApplication;

    private string $apiUrl;

    public function setUp(): void {
        parent::setUp();

        $this->apiUrl = config('apiato.api.url');
    }

    public function apiUrl(string $apiVersion = 'v1'): string {
        return $this->apiUrl . '/' . $apiVersion;
    }

    public function assertArrayKeysMatching(array $expected, array $tested, string $message):void
    {
        $is_equal = empty(array_diff_key($expected, $tested)) && empty(array_diff_key($tested, $expected));

        $this->assertTrue($is_equal, $message);
    }

}

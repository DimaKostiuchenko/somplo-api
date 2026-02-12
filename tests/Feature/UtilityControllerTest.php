<?php

namespace Tests\Feature;

use Illuminate\Testing\Fluent\AssertableJson;
use Tests\TestCase;

class UtilityControllerTest extends TestCase
{
    public function test_parser_returns_catalog_images(): void
    {
        $this->getJson('/api/utilities/parser')
            ->assertStatus(200)
            ->assertJson(fn (AssertableJson $json) => $json->has('data.images', 8)
                ->whereAllType(['data.images.0' => 'string'])
            );
    }
}

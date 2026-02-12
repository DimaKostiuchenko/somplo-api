<?php

namespace Tests\Feature;

use App\Models\Seller;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class SellerControllerTest extends TestCase
{
    use RefreshDatabase;

    public function test_set_data_creates_seller_successfully(): void
    {
        $payload = Seller::factory()->make()->toArray();
        $this->postJson(route('seller.set_data'), $payload)
            ->assertCreated();
        $this->assertDatabaseHas('sellers', $payload);
    }
}

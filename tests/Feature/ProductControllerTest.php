<?php

namespace Tests\Feature;

use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ProductControllerTest extends TestCase
{
    use RefreshDatabase;

    public function test_set_data_creates_product_successfully(): void
    {
        $payload = Product::factory()->make()->toArray();
        $this->postJson(route('product.set_data'), $payload)
            ->assertCreated();
        $this->assertDatabaseHas('products', $payload);
    }

    public function test_get_data_retrieves_product_data(): void
    {
        $product = Product::factory()->create();
        $this->getJson(route('product.get_data', ['id' => $product->id]))
            ->assertJsonFragment(['data' => new ProductResource($product)]);
    }

    public function test_update_data_bulk_updates_bulk_data(): void
    {
        $products = Product::factory()->count(3)->create(['cost' => 100.00]);
        $otherProduct = Product::factory()->create(['cost' => 100.00]);

        $ids = $products->pluck('id')->toArray();

        $newCost = 55.50;

        $payload = [
            'ids' => $ids,
            'cost' => $newCost,
        ];

        $response = $this->postJson(route('product.update_data_bulk'), $payload);

        $response->assertNoContent();

        foreach ($ids as $id) {
            $this->assertDatabaseHas('products', [
                'id' => $id,
                'cost' => $newCost,
            ]);
        }

        $this->assertDatabaseHas('products', [
            'id' => $otherProduct->id,
            'cost' => 100.00,
        ]);

    }

    public function test_bulk_insert_inserts_bulk_data(): void
    {

        $products = Product::factory()->count(3)->make()->toArray();

        $response = $this->postJson(route('product.bulk_insert'), ['products' => $products]);

        $response->assertNoContent();

        foreach ($products as $product) {
            $this->assertDatabaseHas('products', $product);
        }
    }
}

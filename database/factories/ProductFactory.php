<?php

namespace Database\Factories;

use App\Models\Seller;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'phone_name' => $this->faker->words(3, true),
            'seller_id' => Seller::factory(),
            'display_size' => $this->faker->randomFloat(2, 4, 7),
            'quantity' => $this->faker->numberBetween(1, 100),
            'cost' => $this->faker->randomFloat(2, 100, 2000),
        ];
    }
}

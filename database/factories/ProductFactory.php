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
            'phone_name' => ucfirst($this->faker->word()).' '.$this->faker->randomElement(['Pro', 'Ultra', 'Max', 'Lite']),
            'seller_id' => Seller::factory(),
            'display_size' => $this->faker->randomFloat(2, 5.4, 6.9),
            'quantity' => $this->faker->numberBetween(0, 50),
            'cost' => $this->faker->numberBetween(199, 1299).'.99',
        ];
    }
}

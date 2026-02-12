<?php

namespace App\Http\Actions\Product;

use App\Exceptions\ProductNotFoundException;
use App\Models\Product;

class GetDataAction
{
    public function handle(int $id): Product
    {
        $product = Product::query()
            ->with('seller')
            ->largeDisplay()
            ->where('id', $id)
            ->first();

        throw_if(! $product, new ProductNotFoundException('Product not found or display size not greater than 5'));

        return $product;
    }
}

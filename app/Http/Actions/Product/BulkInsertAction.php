<?php

namespace App\Http\Actions\Product;

use App\Models\Product;

class BulkInsertAction
{
    public function handle(array $products): bool
    {
        $now = now();
        $products = array_map(fn ($p) => $p + ['created_at' => $now, 'updated_at' => $now], $products);

        return Product::query()->insert($products);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'phone_name',
        'seller_id',
        'display_size',
        'quantity',
        'cost',
    ];

    protected function casts(): array
    {
        return [
            'display_size' => 'decimal:2',
            'cost' => 'decimal:2',
        ];
    }

    public function scopeLargeDisplay(Builder $query, float $size = 5.0): Builder
    {
        return $query->where('display_size', '>', $size);
    }

    public function seller(): BelongsTo
    {
        return $this->belongsTo(Seller::class);
    }
}

<?php

namespace App\Services\Rozetka;

use App\Services\Scrapping\HtmlClient;
use Illuminate\Support\Facades\Cache;

readonly class RozetkaPromotionsService
{
    public function __construct(
        private HtmlClient $client,
        private RozetkaPromotionsExtractor $extractor
    ) {}

    public function images(string $url, int $limit = 10): array
    {
        return Cache::remember(
            "rozetka.promotions.images.{$limit}",
            now()->addMinutes(1),
            function () use ($url, $limit) {
                $html = $this->client->fetch($url);

                return $this->extractor->extractImages($html, $limit);
            }
        );
    }
}

<?php

namespace App\Services\Scrapping;

use App\Exceptions\FetchFailedException;
use Illuminate\Http\Client\ConnectionException;
use Illuminate\Http\Client\RequestException;
use Illuminate\Support\Facades\Http;

class HtmlClient
{
    public function fetch(string $url, array $headers = [], int $timeout = 10, int $retries = 2): string
    {
        try {
            return Http::withHeaders(array_merge([
                'User-Agent' => 'Mozilla/5.0 (compatible; MyAppBot/1.0)',
                'Accept-Language' => 'uk-UA,uk;q=0.9,en;q=0.8',
            ], $headers))
                ->timeout($timeout)
                ->retry($retries, 300)
                ->get($url)
                ->throw()
                ->body();

        } catch (ConnectionException|RequestException $e) {
            throw new FetchFailedException("Failed to fetch: {$url}");
        }
    }
}

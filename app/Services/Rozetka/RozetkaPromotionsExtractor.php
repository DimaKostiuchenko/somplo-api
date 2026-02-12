<?php

namespace App\Services\Rozetka;

use App\Exceptions\ParseFailedException;
use DomDocument;
use DOMElement;
use DOMXPath;

class RozetkaPromotionsExtractor
{
    public function extractImages(string $html, int $limit = 8): array
    {

        if (trim($html) === '') {
            throw new ParseFailedException('Rozetka Scraper: Empty HTML.');
        }

        $dom = $this->createSafeDom($html);
        $xpath = new DOMXPath($dom);
        $section = $xpath->query('//section[contains(@class, "content_type_catalog")]')->item(0);

        if (! $section) {
            throw new ParseFailedException('Rozetka structure changed.');
        }

        $images = [];
        $imgNodes = $xpath->query('.//img', $section);
        if (! $imgNodes) {
            throw new ParseFailedException('Rozetka - no images found.');
        }

        foreach ($imgNodes as $img) {
            if (! $img instanceof DOMElement) {
                continue;
            }

            $rawUrl = $img->getAttribute('data-src') ?: $img->getAttribute('src');
            if (filter_var($rawUrl, FILTER_VALIDATE_URL) ? $rawUrl : null) {
                $images[] = $rawUrl;
            }
            if (count($images) >= $limit) {
                break;
            }
        }

        return $images;
    }

    private function createSafeDom(string $html): DOMDocument
    {
        $prev = libxml_use_internal_errors(true);
        $dom = new DOMDocument;
        $dom->loadHTML('<?xml encoding="utf-8" ?>'.$html, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        libxml_clear_errors();
        libxml_use_internal_errors($prev);

        return $dom;
    }
}

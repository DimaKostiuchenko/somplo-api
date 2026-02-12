<?php

namespace App\Http\Controllers;

use App\Services\Rozetka\RozetkaPromotionsService;
use App\Support\ApiResponse;
use Illuminate\Http\JsonResponse;

class UtilityController extends Controller
{
    public function parser(RozetkaPromotionsService $service): JsonResponse
    {
        $url = 'https://rozetka.com.ua/ua/news-articles-promotions/promotions/';

        return ApiResponse::success(['images' => $service->images($url, 8)]);
    }
}

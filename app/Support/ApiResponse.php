<?php

namespace App\Support;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;

class ApiResponse
{
    public static function success(array $data = [], int $status = 200): JsonResponse
    {
        return response()->json([
            'data' => $data,
        ], $status);
    }

    public static function error(string $message, int $status = 400): JsonResponse
    {
        return response()->json([
            'message' => $message,
        ], $status);
    }

    public static function noContent(int $status = 204): Response
    {
        return response()->noContent($status);
    }
}

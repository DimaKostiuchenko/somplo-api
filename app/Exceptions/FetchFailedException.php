<?php

namespace App\Exceptions;

use App\Support\ApiResponse;
use Exception;
use Illuminate\Http\JsonResponse;

class FetchFailedException extends Exception
{
    protected int $status = 502;

    public function render($request): JsonResponse
    {
        return ApiResponse::error(
            $this->getMessage() ?: 'Failed to fetch remote resource.',
            $this->status
        );
    }
}

<?php

namespace App\Exceptions;

use App\Support\ApiResponse;
use Exception;
use Illuminate\Http\JsonResponse;

class ParseFailedException extends Exception
{
    protected int $status = 500;

    public function render($request): JsonResponse
    {
        return ApiResponse::error(
            $this->getMessage() ?: 'Failed to parse HTML.',
            $this->status
        );
    }
}

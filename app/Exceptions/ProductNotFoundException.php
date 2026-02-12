<?php

namespace App\Exceptions;

use App\Support\ApiResponse;
use Exception;
use Illuminate\Http\JsonResponse;

class ProductNotFoundException extends Exception
{
    public function __construct(string $message = 'Product not found.', int $code = 404)
    {
        parent::__construct($message, $code);
    }

    public function render($request): JsonResponse
    {
        return ApiResponse::error(
            $this->getMessage(),
            $this->getCode()
        );
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Requests\SetSellerDataRequest;
use App\Http\Resources\SellerResource;
use App\Models\Seller;
use Illuminate\Http\JsonResponse;

class SellerController extends Controller
{
    public function setData(SetSellerDataRequest $request): JsonResponse
    {
        $seller = Seller::query()->create($request->validated());

        return new SellerResource($seller)
            ->response()
            ->setStatusCode(201);

    }
}

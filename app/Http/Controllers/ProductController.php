<?php

namespace App\Http\Controllers;

use App\Http\Actions\Product\BulkInsertAction;
use App\Http\Actions\Product\GetDataAction;
use App\Http\Requests\BulkInsertProductRequest;
use App\Http\Requests\SetProductDataRequest;
use App\Http\Requests\UpdateBulkProductRequest;
use App\Http\Resources\ProductResource;
use App\Models\Product;
use App\Support\ApiResponse;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;

class ProductController extends Controller
{
    public function setData(SetProductDataRequest $request): JsonResponse
    {
        $product = Product::query()->create($request->validated());

        return new ProductResource($product)
            ->response()
            ->setStatusCode(201);

    }

    public function getData(int $id, GetDataAction $action): JsonResponse
    {
        return new ProductResource($action->handle($id))
            ->response()
            ->setStatusCode(200);
    }

    public function updateDataBulk(UpdateBulkProductRequest $request): Response
    {
        Product::query()
            ->whereIn('id', $request->validated('ids'))
            ->update(['cost' => $request->validated('cost')]);

        return ApiResponse::noContent();

    }

    public function bulkInsert(BulkInsertProductRequest $request, BulkInsertAction $action): Response
    {
        $products = $request->validated('products');
        $action->handle($products);

        return ApiResponse::noContent();

    }
}

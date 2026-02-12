<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\SellerController;
use App\Http\Controllers\UtilityController;
use Illuminate\Support\Facades\Route;

// Product endpoints
Route::controller(ProductController::class)->group(function () {
    Route::post('/product/set_data', 'setData')
        ->name('product.set_data');

    Route::get('/product/get_data/{id}', 'getData')
        ->whereNumber('id')
        ->name('product.get_data');

    Route::post('/product/update_data_bulk', 'updateDataBulk')
        ->name('product.update_data_bulk');

    Route::post('/bulk_insert', 'bulkInsert')
        ->name('product.bulk_insert');
});

// Seller endpoint
Route::controller(SellerController::class)->group(function () {
    Route::post('/seller/set_data', 'setData')->name('seller.set_data');
});

// Utilities
Route::controller(UtilityController::class)->group(function () {
    Route::get('/utilities/parser', 'parser');
});

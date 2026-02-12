<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\SellerController;
use App\Http\Controllers\UtilityController;
use Illuminate\Support\Facades\Route;

// Product endpoints
Route::post('/product/set_data', [ProductController::class, 'setData']);
Route::get('/product/get_data/{id}', [ProductController::class, 'getData'])->whereNumber('id');
Route::post('/product/update_data_bulk', [ProductController::class, 'updateDataBulk']);

// Seller endpoint
Route::post('/seller/set_data', [SellerController::class, 'setData']);

// Bulk insert
Route::post('/bulk_insert', [ProductController::class, 'bulkInsert']);

// Utilities
Route::get('/utilities/parser', [UtilityController::class, 'parser']);

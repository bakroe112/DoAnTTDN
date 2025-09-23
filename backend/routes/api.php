<?php
use App\Http\Controllers\AttributeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\ProductResource;
use App\Models\Attribute;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::apiResource('users', UserController::class);
Route::apiResource('products', ProductController::class);
Route::apiResource('categories', CategoryController::class);
Route::apiResource('attributes', AttributeController::class);
Route::apiResource('orders', OrderController::class);


// Route::get("/all-products", function () {
//     return ProductResource::collection(Product::all());
// });

Route::get("/all-products", function () {
    return ProductResource::collection(
        Product::with(['categories', 'images', 'attributes'])->get()
    );
});

Route::get("/all-categories", function () {
    return CategoryResource::collection(Category::all());
});

Route::get("/all-attributes", function () {
    return CategoryResource::collection(Attribute::all());
});

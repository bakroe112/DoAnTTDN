<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $category = $request->get("categories");
        $priceRange = $request->get("price");
        $sort = $request->get("sort");
        $asc = $request->boolean("asc", false);
        $search = $request->get("search");
        $paginate = $request->get("paginate", 10);
        $brand = $request->get("brand");

        $attributeName = $request->get("attribute_name");
        $attributeValue = $request->get("attribute_value");

        $products = Product::with(['images', 'categories', 'attributes']);

        if ($category) {
            $categories = explode(',', $category);
            $products->whereHas('categories', function ($q) use ($categories) {
                // $q->whereIn('categories.name', $categories);
                $q->where(function ($query) use ($categories) {
                    foreach ($categories as $cat) {
                        $query->orWhere('categories.name', 'like', "%{$cat}%");
                    }
                });
            });
        }

        if ($priceRange) {
            $range = explode("-", $priceRange);
            if (count($range) == 2) {
                $products->whereBetween("sell_price", [$range[0], $range[1]]);
            }
        }

        if ($search) {
            $products->where("name", "like", "%" . $search . "%");
        }

        if ($brand) {
            $products->where("brand_name", "%{$brand}%");
        }

        if ($sort) {
            $products->orderBy($sort, $asc ? "asc" : "desc");
        }

        if ($attributeName || $attributeValue) {
            $attributesName = explode(',', $attributeName);
            $attributesValue = explode(',', $attributeValue);

            $products->whereHas('attributes', function ($q) use ($attributesName, $attributesValue) {
                if ($attributesName) {
                    $q->where(function ($query) use ($attributesName) {
                        foreach ($attributesName as $attr) {
                            $query->orWhere('name', 'like', "%{$attr}%");
                        }
                    });
                }
                if ($attributesValue) {
                    $q->where(function ($query) use ($attributesValue) {
                        foreach ($attributesValue as $attr) {
                            $query->orWhere('value', 'like', "%{$attr}%");
                        }
                    });
                }
            });
        }

        return ProductResource::collection($products->paginate($paginate));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $product = Product::create([
            'sku' => $request->sku,
            'name' => $request->name,
            'quantity' => $request->quantity,
            'supplier_retail_price' => $request->supplier_retail_price,
            'discount_amount' => $request->discount_amount,
            'sell_price' => $request->sell_price,
            'description' => $request->description,
            'short_description' => $request->short_description,
            'brand_name' => $request->brand_name,
            'brand_logo' => $request->brand_logo,
            'image_url' => $request->image_url,
        ]);

        $product->categories()->attach($request->categories);
        $product->attributes()->attach($request->input('attributes')); // Phải dùng vậy vì attributes là ParameterBag trong request

        $product->images()->createMany(
            collect($request->images)->map(fn($url) => ['url' => $url])->toArray()
        );

    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        $product->load(['images', 'categories', 'attributes']);

        return new ProductResource($product);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $sku)
    {
        $product = Product::where('sku', $sku)->firstOrFail();

        $product->update([
            'sku' => $request->sku,
            'name' => $request->name,
            'quantity' => $request->quantity,
            'supplier_retail_price' => $request->supplier_retail_price,
            'discount_amount' => $request->discount_amount,
            'sell_price' => $request->sell_price,
            'description' => $request->description,
            'short_description' => $request->short_description,
            'brand_name' => $request->brand_name,
            'brand_logo' => $request->brand_logo,
            'image_url' => $request->image_url,
        ]);
        $product->categories()->sync((array) $request->categories);
        $product->attributes()->sync((array) $request->input('attributes'));

        if ($request->has('images')) {
            // cách 1: xoá hết ảnh cũ, thêm lại từ đầu
            $product->images()->delete();

            $product->images()->createMany(
                collect($request->images)->map(fn($url) => ['url' => $url])->toArray()
            );
        }

        return new ProductResource($product);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return ProductResource::collection(Product::all());
    }
}

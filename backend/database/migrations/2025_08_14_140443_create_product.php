<?php

use App\Models\Brand;
use App\Models\Category;
use App\Models\ProductAttribute;
use App\Models\ProductCategory;
use App\Models\ProductImage;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            // $table->id();
            // IDs & keys
            $table->unsignedBigInteger('sku')->primary();

            // Basic info
            $table->string('name', 255);
            $table->string('image_url', 2048)->nullable();

            // Prices (VND, không lẻ) -> dùng BIGINT
            $table->unsignedBigInteger('supplier_retail_price')->nullable();
            $table->unsignedBigInteger('latest_price')->nullable();
            $table->unsignedBigInteger('discount_amount')->nullable();
            $table->unsignedBigInteger('sell_price')->nullable();

            // % giảm giá (giữ 2 chữ số thập phân)
            $table->decimal('discount_percent', 5, 2)->default(0);

            // Nội dung dài / HTML
            $table->longText('description')->nullable();
            $table->longText('short_description')->nullable();

            // brand name
            $table->string('brand_name', 255);
            $table->string('brand_logo', 2048)->nullable();

            // Các khóa ngoại
            // $table->unsignedBigInteger('product_category_id');
            // $table->foreign('product_category_id')->references('product_id')->on('product_categories')->cascadeOnDelete();

            // $table->unsignedBigInteger('product_attributes_id');
            // $table->foreign('product_attributes_id')->references('product_id')->on('product_attributes')->cascadeOnDelete();

            // $table->unsignedBigInteger('product_images');
            // $table->foreign('product_images_id')->references('product_id')->on('product_images')->cascadeOnDelete();

            // $table->foreignIdFor(Brand::class)->constrained()->cascadeOnDelete();
            // $table->foreignIdFor(ProductAttribute::class)->constrained()->cascadeOnDelete();
            // $table->foreignIdFor(ProductImage::class)->constrained()->cascadeOnDelete();
            // $table->foreignIdFor(Category::class)->constrained()->cascadeOnDelete();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};

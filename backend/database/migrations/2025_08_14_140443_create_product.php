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
            $table->unsignedBigInteger('quantity')->nullable();

            // Prices (VND, không lẻ) -> dùng BIGINT
            $table->unsignedBigInteger('supplier_retail_price')->nullable();
            // $table->unsignedBigInteger('latest_price')->nullable();
            $table->unsignedBigInteger('discount_amount')->nullable();
            $table->unsignedBigInteger('sell_price')->nullable();

            // % giảm giá (giữ 2 chữ số thập phân)
            // $table->decimal('discount_percent', 5, 2)->default(0);

            // Nội dung dài / HTML
            $table->longText('description')->nullable();
            $table->longText('short_description')->nullable();

            // brand name
            $table->string('brand_name', 255);
            $table->string('brand_logo', 2048)->nullable();

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

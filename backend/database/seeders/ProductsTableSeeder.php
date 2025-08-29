<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         $faker = Faker::create();

        // Giả sử trong DB đã có dữ liệu cho Brand, ProductAttribute, ProductImage
        $brandIds = DB::table('brands')->pluck('id')->toArray();
        $attributeIds = DB::table('product_attributes')->pluck('id')->toArray();
        $imageIds = DB::table('product_images')->pluck('id')->toArray();

        // Nếu 3 bảng này trống thì báo lỗi
        if (empty($brandIds) || empty($attributeIds) || empty($imageIds)) {
            $this->command->error("⚠️ Cần seed dữ liệu cho brands, product_attributes, product_images trước!");
            return;
        }

        for ($i = 1; $i <= 10; $i++) {
            DB::table('products')->insert([
                'sku' => strtoupper($faker->bothify('SKU###??')),
                'name' => $faker->productName ?? $faker->words(3, true), // Nếu không có hàm productName thì dùng words
                'image_url' => $faker->imageUrl(640, 480, 'products', true),

                'supplier_retail_price' => $faker->numberBetween(100000, 2000000),
                'latest_price' => $faker->numberBetween(100000, 2000000),
                'discount_amount' => $faker->numberBetween(0, 500000),
                'sell_price' => $faker->numberBetween(100000, 2000000),
                'discount_percent' => $faker->randomFloat(2, 0, 50),

                'description' => $faker->paragraph(5),
                'short_description' => $faker->sentence(10),

                'brand_id' => $faker->randomElement($brandIds),
                'product_attribute_id' => $faker->randomElement($attributeIds),
                'product_image_id' => $faker->randomElement($imageIds),

                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}

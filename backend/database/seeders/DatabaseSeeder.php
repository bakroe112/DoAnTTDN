<?php

namespace Database\Seeders;

use App\Models\Attribute;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Image;
use App\Models\Product;
use App\Models\ProductAttribute;
use App\Models\ProductCategory;
use App\Models\ProductImage;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // $this->call([
        //     CategoriesTableSeeder::class,
        //     BrandsTableSeeder::class,
        //     ProductImagesTableSeeder::class,
        //     ProductAttributesTableSeeder::class,
        //     ProductsTableSeeder::class,
        // ]);

        // Category
        $laptop = Category::create(['name' => 'Laptop', 'parent_id' => null]);
        $apple = Category::create(['name' => 'Apple', 'parent_id' => null]);

        $brand = Category::create(['name' => 'Thương hiệu', 'parent_id' => $laptop->id]);
        Category::create(['name' => 'Apple', 'parent_id' => $brand->id]);
        Category::create(['name' => 'DELL', 'parent_id' => $brand->id]);

        $mac = Category::create(['name' => 'Mac', 'parent_id' => $apple->id]);
        Category::create(['name' => 'Mac Pro', 'parent_id' => $mac->id]);
        Category::create(['name' => 'IMac', 'parent_id' => $mac->id]);

        $config = Category::create(['name' => 'Cấu hình', 'parent_id' => $laptop->id]);
        Category::create(['name' => 'Laptop i5', 'parent_id' => $config->id]);

        // Attributes
        $thongtinchung = Attribute::create(['name' => 'Thông tin chung', 'value' => '', 'parent_id' => null]);
        $cauhinhchitiet = Attribute::create(['name' => 'Cấu hình chi tiết', 'value' => '', 'parent_id' => null]);

        $baohanh = Attribute::create(['name' => 'Bảo hành', 'value' => '24 tháng', 'parent_id' => $thongtinchung->id]);
        $ten = Attribute::create(['name' => 'Tên', 'value' => 'LS22C310EAEXXV', 'parent_id' => $thongtinchung->id]);
        $kichthuoc = Attribute::create(['name' => 'Kích thước', 'value' => '22\"', 'parent_id' => $cauhinhchitiet->id]);

        //Images
        $image1 = Image::create(['url' => 'aaaaa']);
        $image2 = Image::create(['url' => 'bbbb']);
        $image3 = Image::create(['url' => 'cccc']);
        $image4 = Image::create(['url' => 'dddd']);

        //Products
        $product1 = Product::create([
            'sku' => '1112',
            'name' => 'product1',
            'image_url' => 'url1',
            'supplier_retail_price' => 100000,
            'latest_price' => 100000,
            'discount_amount' => 0,
            'sell_price' => 100000,
            'discount_percent' => 0,
            'description' => 'something',
            'short_description' => 'something',
            'brand_name' => 'asus pro',
            'brand_logo' => 'ASSSSUS',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        $product2 = Product::create([
            'sku' => '1113',
            'name' => 'product2',
            'image_url' => 'url2',
            'supplier_retail_price' => 100000,
            'latest_price' => 100000,
            'discount_amount' => 0,
            'sell_price' => 100000,
            'discount_percent' => 0,
            'description' => 'something',
            'short_description' => 'something',
            'brand_name' => 'Mac pro',
            'brand_logo' => 'MACCCC',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Product Attribute
        $productAttri1 = ProductAttribute::create([
            'product_id' => $product1->sku,
            'attribute_id' => $thongtinchung->id,
        ]);
           $productAttri2 = ProductAttribute::create([
            'product_id' => $product1->sku,
            'attribute_id' => $baohanh->id,
        ]);

        //Product Category
            $productCate1 = ProductCategory::create([
            'product_id' => $product1->sku,
            'category_id' => $laptop->id,
        ]);
           $productCate2 = ProductCategory::create([
            'product_id' => $product1->sku,
            'category_id' => $mac->id,
        ]);

          //Product Image
            $productImage1 = ProductImage::create([
            'product_id' => $product1->sku,
            'image_id' => $image1->id,
        ]);
           $productImage2 = ProductImage::create([
            'product_id' => $product1->sku,
            'image_id' => $image2->id,
        ]);
    }
}

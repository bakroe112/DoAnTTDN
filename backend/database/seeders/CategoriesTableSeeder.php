<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Root
        $laptop = Category::create(['name' => 'Laptop', 'parent_id' => null]);

        // Thương hiệu
        $brand = Category::create(['name' => 'Thương hiệu', 'parent_id' => $laptop->id]);
        Category::create(['name' => 'Apple', 'parent_id' => $brand->id]);
        Category::create(['name' => 'DELL', 'parent_id' => $brand->id]);

        // Cấu hình
        $config = Category::create(['name' => 'Cấu hình', 'parent_id' => $laptop->id]);
        Category::create(['name' => 'Laptop i5', 'parent_id' => $config->id]);
    }
}

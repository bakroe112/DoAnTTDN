<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class ProductAttributesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        // Thêm 5 category cha
        for ($i = 1; $i <= 5; $i++) {
            DB::table('product_attributes')->insert([
                'attributes_id' => $faker->numberBetween(1, 5),
                'name' => 'Thông tin chung',
                'value' => '',
                'parent_id' => 0, // cha gốc
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        for ($i = 1; $i <= 10; $i++) {
            DB::table('categories')->insert([
                'attributes_id' => $faker->numberBetween(1, 5),
                'name' => 'Thông tin chung',
                'value' => '',
                'parent_id' => $faker->numberBetween(1, 5), // cha gốc
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

    }
}

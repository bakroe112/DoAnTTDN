<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class ProductImagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
          $faker = Faker::create();

        for ($i = 1; $i <= 30; $i++) {
            DB::table('product_images')->insert([
                'product_id' => $faker->numberBetween(1, 10),
                'image_url' => $faker->imageUrl(640, 480, 'products', true),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}

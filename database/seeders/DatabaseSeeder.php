<?php

namespace Database\Seeders;

use App\Models\Image;
use App\Models\Product;
use App\Models\ProductFeatures;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Product::factory(50)->create()
        ->each(function ($product){
            // Guardamos las imaganes al producto
            $images = Image::factory(mt_rand(2,4))->make();
            $product->images()->saveMany($images);
            // Guardamos las caracteristicas al producto
            $features = ProductFeatures::factory(5)->make();
            $product->features()->saveMany($features);
        });
    }
}

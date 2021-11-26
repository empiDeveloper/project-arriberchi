<?php

namespace Database\Factories;

use App\Models\ProductFeatures;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFeaturesFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = ProductFeatures::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'caracteristica' => $this->faker->sentence(3),
        ];
    }
}

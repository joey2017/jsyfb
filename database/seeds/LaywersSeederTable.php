<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class LaywersSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('App\Laywer');

        for ($i = 1; $i <= 100; $i++) {
            DB::table('jsyfb_laywer')->insert([
                'name'       => $faker->name(),
                'class_id'   => $faker->numberBetween(1, 5),
                'level'      => $faker->numberBetween(1, 5),
                'title'      => $faker->jobTitle,
                'created_at' => \Carbon\Carbon::now(),
                'updated_at' => \Carbon\Carbon::now(),
            ]);
        }
    }
}

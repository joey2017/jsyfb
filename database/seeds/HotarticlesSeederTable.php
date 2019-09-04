<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class HotarticlesSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create('App\Acticle');

        for($i = 1 ; $i <= 100 ; $i++){
            DB::table('jsyfb_hot_acticle')->insert([
                'title'          => $faker->sentence(),
                'keyword'        => $faker->sentence(),
                'content'        => $faker->sentence(),
                'like_count'     => $faker->numberBetween(200, 1000),
                'comments_count' => $faker->numberBetween(200, 1000),
                'created_at'     => \Carbon\Carbon::now(),
                'updated_at'     => \Carbon\Carbon::now(),
            ]);
        }
    }
}

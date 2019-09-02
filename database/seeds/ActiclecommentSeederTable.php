<?php

use Illuminate\Database\Seeder;

class ActiclecommentSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = \Faker\Factory::create('App\Acticlecomment');

        for ($i = 1; $i <= 100; $i++) {
            DB::table('jsyfb_acticle_comment')->insert([
                'user_id'        => $faker->numberBetween(1, 500),
                'acticle_id'     => $faker->numberBetween(1, 100),
                'interpretation' => $faker->sentence(),
                'measures'       => $faker->sentence(),
                'created_at'     => \Carbon\Carbon::now(),
                'Updated_at'     => \Carbon\Carbon::now(),
            ]);
        }
    }
}

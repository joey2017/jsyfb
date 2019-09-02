<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class AttentionSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create('App\Attention');

        for ($i = 1; $i <= 100; $i++) {
            DB::table('jsyfb_attention')->insert([
                'user_id'    => $faker->numberBetween(1, 500),
                'role_id'    => $faker->numberBetween(1, 20),
                'role'       => $faker->randomLetter,
                'created_at' => \Carbon\Carbon::now(),
                'Updated_at' => \Carbon\Carbon::now(),
            ]);
        }
    }
}

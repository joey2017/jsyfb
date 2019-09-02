<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class IngotsSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('App\Balance');

        for ($i = 1; $i <= 100; $i++) {
            DB::table('jsyfb_ingots')->insert([
                'user_id'     => $faker->numberBetween(1, 500),
                'quantity'    => $faker->numberBetween(1, 200),
                'expire_time' => \Carbon\Carbon::now(),
                'created_at'  => \Carbon\Carbon::now(),
                'updated_at'  => \Carbon\Carbon::now(),
            ]);
        }
    }
}

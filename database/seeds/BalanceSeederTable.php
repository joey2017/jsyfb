<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class BalanceSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create('App\Balance');

        for ($i = 1; $i <= 100; $i++) {
            DB::table('jsyfb_balance')->insert([
                'user_id'    => $faker->numberBetween(1, 500),
                'amount'    => $faker->randomFloat(2, 200,5000),
                'created_at' => \Carbon\Carbon::now(),
                'Updated_at' => \Carbon\Carbon::now(),
            ]);
        }
    }
}

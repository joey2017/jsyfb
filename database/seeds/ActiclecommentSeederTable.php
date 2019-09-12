<?php

use Illuminate\Database\Seeder;

class ActicleCommentSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = \Faker\Factory::create('App\ActicleComment');

        for ($i = 1; $i <= 100; $i++) {
            DB::table('jsyfb_acticle_comment')->insert([
                'user_id'        => $faker->numberBetween(1, 500),
                'article_id'     => $faker->numberBetween(1, 100),
                'interpretation' => $faker->sentence(),
                'measures'       => $faker->sentence(),
                'created_at'     => \Carbon\Carbon::now(),
                'updated_at'     => \Carbon\Carbon::now(),
            ]);
        }
    }
}

<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent;
use \Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{


    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

         $this->call(Demo::class);
    }
}

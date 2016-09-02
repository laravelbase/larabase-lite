<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('gender');
            $table->integer('age');
            $table->string('avatar');
            $table->boolean('verified')->default(0);
            $table->string('verification_token');
            $table->string('ip');
            $table->dateTime('last_login')->default(null);
            $table->integer('login_times')->default(0);
            $table->string('oauth_id');
            $table->string('oauth_source');
            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('users');
    }
}

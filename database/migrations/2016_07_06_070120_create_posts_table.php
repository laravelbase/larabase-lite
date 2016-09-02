<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');

            $table->string('title');
            $table->text('desc');
            $table->text('body');
            $table->string('seo_keywords');
            $table->text('seo_desc');
            $table->text('feature_img');
            $table->string('status');
            $table->string('type');
            $table->string('url');
            $table->integer('clicks');
            $table->integer('comments');
            $table->integer('likes');

            $table->integer('user_id');
            $table->integer('collection_id');
            $table->integer('category_id');
            $table->integer('content_id');

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
        Schema::drop('posts');
    }
}

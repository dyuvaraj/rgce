<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('website_detail_attachments', function (Blueprint $table) {
            $table->id();
            $table->foreignId('web_page_id')->constrained();
            $table->foreignId('website_detail_id')->constrained();
            $table->string('title')->nullable();
            $table->text('description')->nullable();
            $table->string('attachment')->nullable();
            $table->boolean('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('website_detail_attachments');
    }
};

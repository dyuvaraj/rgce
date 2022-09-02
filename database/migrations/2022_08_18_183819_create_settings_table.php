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
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->string('college_name')->nullable();
            $table->string('counselling_code')->nullable();
            $table->string('address')->nullable();
            $table->string('contact_no')->nullable();
            $table->string('phone_no')->nullable();
            $table->string('email')->nullable();
            $table->string('google_map')->nullable();
            $table->string('facebook')->nullable();
            $table->string('linkedin')->nullable();
            $table->string('twitter')->nullable();
            $table->string('instagram')->nullable();
            $table->string('office_address')->nullable();
            $table->string('logo')->nullable();
            $table->string('office_contact_no')->nullable();
            $table->string('office_phone_no')->nullable();
            $table->string('office_email')->nullable();
            $table->text('iso_certificates')->nullable();
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
        Schema::dropIfExists('settings');
    }
};

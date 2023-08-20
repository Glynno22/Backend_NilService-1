<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('prestataires', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nomPrest');
            $table->string('emailPrest');
            $table->string('codePremiumPar');
            $table->string('codePrest');
            $table->string('paysPrest');
            $table->string('villePrest');
            $table->string('quartierPrest');
            $table->string('categoriePrest');
            $table->string('telPrest');
            $table->text('description');
            $table->string('scanCNI');
            $table->string('photoPrest');
            $table->string('photoAvecCNI');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('prestataires');
    }
};

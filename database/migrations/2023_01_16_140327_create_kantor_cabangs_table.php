<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKantorCabangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kantor_cabangs', function (Blueprint $table) {
            $table->id();
            $table->string('kantor_cabang_name');
            $table->string('kantor_cabang_location');
            $table->string('jumlah_mesin');
            $table->string('status');
            $table->string('catatan');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kantor_cabangs');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('contacto');
            $table->string('email');
            $table->bigInteger('numero_contacto');
            $table->bigInteger('identificacion');
            $table->string('metodo_pago');
            $table->string('estado')->default('pendiente');
            $table->bigInteger('product_id')->unsigned();
            // $table->bigInteger('cliente_id')->unsigned();
            $table->timestamps();
            $table->foreign('product_id')->references('id')->on('products');
            // $table->foreign('cliente_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}

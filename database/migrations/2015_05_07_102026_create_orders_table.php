<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('orders', function(Blueprint $table)
		{
			$table->increments('id');

			$table->integer('transaction_id')->unsigned();
			$table->foreign('transaction_id')
				  ->references('id')->on('transactions')
				  ->onDelete('cascade')->onUpdate('cascade');

			$table->integer('product_id')->unsigned();
			$table->foreign('product_id')
				  ->references('id')->on('products')
				  ->onDelete('cascade')->onUpdate('cascade');

			$table->integer('qty')->default(0);
			$table->decimal('amount_order',15,4)->default('0.0000');
			$table->string('note');
			$table->integer('status_order')->default(0);
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
		Schema::drop('orders');
	}

}

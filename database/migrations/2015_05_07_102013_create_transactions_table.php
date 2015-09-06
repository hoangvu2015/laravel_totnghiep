<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('transactions', function(Blueprint $table)
		{
			$table->increments('id');

			$table->integer('customer_id')->unsigned();
			$table->foreign('customer_id')
				  ->references('id')->on('customers')
				  ->onDelete('cascade')->onUpdate('cascade');

			$table->integer('ship_id')->unsigned();
			$table->foreign('ship_id')
				  ->references('id')->on('ships')
				  ->onDelete('cascade')->onUpdate('cascade');

			$table->integer('pay_id')->unsigned();
			$table->foreign('pay_id')
				  ->references('id')->on('pays')
				  ->onDelete('cascade')->onUpdate('cascade');
				  
			$table->string('status')->default(0);
			$table->decimal('amount')->default('0.0000');
			$table->text('message');
			$table->string('security');  
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
		Schema::drop('transactions');
	}

}

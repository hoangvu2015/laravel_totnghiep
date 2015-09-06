<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use App\Category;
use App\Product;
use App\Customer;
use App\Pay;
use App\Ship;
use App\Transaction;
use App\Order;



class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();

		 //$this->call('CategoryTableSeeder');
		 //$this->call('ProductTableSeeder');
		 //$this->call('CustomerTableSeeder');
		// $this->call('PayTableSeeder');
		// $this->call('ShipTableSeeder');
		//$this->call('TransactionTableSeeder');
		$this->call('OrderTableSeeder');
		 
		 
	}

}


//Category

class CategoryTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		$faker=Faker\Factory::create();
		for($i=0;$i<10; ++$i){
			Category::create([
				'name'=>$faker->name,

				'parent_id'=>$faker->numberBetween($min=0,$max=5)//implode('',$faker->sentences(4))	//chuyen chuoi sang mang vi faker dung mang.
				]);
		}
	}

}



//Product


class ProductTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		$faker=Faker\Factory::create();
		for($i=0;$i<10; ++$i){
			Product::create([

				'name'=>$faker->name,

				'category_id'=>$faker->numberBetween($min=1,$max=10),//implode('',$faker->sentences(4))	//chuyen chuoi sang mang vi faker dung mang.
				'price'		=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL), // 48.8932
				'content'	=>$faker->text($maxNbChars = 200),
				'discount'	=>$faker->numberBetween($min=1,$max=100),
				'image'		=>$faker->file('D:\laravel\laravel_totnghiep\storage\image','D:\laravel\laravel_totnghiep\app\image',false),	//Ainh	
				'view'		=>$faker->numberBetween($min=0,$max=1),

				]);

		}
	}

}



class CustomerTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		$faker=Faker\Factory::create();
		for($i=0;$i<10; ++$i){
			Customer::create([

				'name'		=>$faker->name,
				'email'		=>$faker->email,
				'phone'		=>$faker->phoneNumber,
				'address'	=>$faker->address,
				'password'	=>Hash::make($faker->word)
				
				]);

		}
	}

}

class PayTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		$faker=Faker\Factory::create();
		for($i=0;$i<10; ++$i){
			Pay::create([

				'name'		=>$faker->name,
				
				]);

		}
	}

}

class ShipTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		$faker=Faker\Factory::create();
		for($i=0;$i<10; ++$i){
			Ship::create([

				'name'		=>$faker->name,
				'price'		=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL)
							
				]);

		}
	}

}

class TransactionTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		$faker=Faker\Factory::create();
		for($i=0;$i<10; ++$i){
			Transaction::create([

				'customer_id'	=>$faker->numberBetween($min=1,$max=10),
				'ship_id'		=>$faker->numberBetween($min=1,$max=10),
				'pay_id'		=>$faker->numberBetween($min=1,$max=10),
				'status'		=>$faker->numberBetween($min=0,$max=1),
				'amount'		=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
				'message'		=>$faker->text($maxNbChars = 200),
				'security'		=>$faker->postcode

				]);

		}
	}

}

class OrderTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		$faker=Faker\Factory::create();
		for($i=0;$i<10; ++$i){
			Order::create([

				'transaction_id'	=> $faker->numberBetween($min=1,$max=10),
				'product_id'		=> $faker->numberBetween($min=13,$max=20),
				'qty'				=> $faker->numberBetween($min=1,$max=100),
				'amount'			=> $faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
				'note'				=> $faker->text($maxNbChars = 200),
				'status_order'		=> $faker->numberBetween($min=0,$max=1)

				]);

		}
	}

}
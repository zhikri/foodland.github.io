<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
        	'nama' => 'Brownie',
            'menu_id' => 1,
            'gambar' => 'brownie.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'French Fries',
            'menu_id' => 1,
            'gambar' => 'frenchfries.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Beef Steak',
            'menu_id' => 2,
            'gambar' => 'steak.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Curry',
            'menu_id' => 2,
            'gambar' => 'curry.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Burger',
            'menu_id' => 2,
            'gambar' => 'hamburger.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Spicy Fried Chicken',
            'menu_id' => 3,
            'gambar' => 'spicyfriedchicken.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Nugget',
            'menu_id' => 3,
            'gambar' => 'nugget.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Chocolate Milk',
            'menu_id' => 4,
            'gambar' => 'susucoklat.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Rasberry Pie',
            'menu_id' => 4,
            'gambar' => 'pie.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Tuna Spaghetti',
            'menu_id' => 4,
            'gambar' => 'pasta.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Espresso',
            'menu_id' => 5,
            'gambar' => 'espresso.png'
        ]);

        DB::table('products')->insert([
        	'nama' => 'Lemon Tea',
            'menu_id' => 5,
            'gambar' => 'lemontea.png'
        ]);
    }
}

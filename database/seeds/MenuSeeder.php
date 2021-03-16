<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('menus')->insert([
        	'nama' => 'Appetizers',
        	'jenis_menu' => 'Hidangan Pembuka',
        	'gambar' => 'appetizer.png',
        ]);

        DB::table('menus')->insert([
        	'nama' => 'Main Course',
        	'jenis_menu' => 'Inggris',
        	'gambar' => 'maincourse.png',
        ]);

        DB::table('menus')->insert([
        	'nama' => 'Side Dishes',
        	'jenis_menu' => 'Makanan Pendamping',
        	'gambar' => 'dishes.png',
        ]);

        DB::table('menus')->insert([
        	'nama' => 'Dessert',
        	'jenis_menu' => 'Makanan Penutup',
        	'gambar' => 'dessert.png',
        ]);

        DB::table('menus')->insert([
        	'nama' => 'Beverages',
        	'jenis_menu' => 'Minuman',
        	'gambar' => 'beverage.png',
        ]);
    }
}

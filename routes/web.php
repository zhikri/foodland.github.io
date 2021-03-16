<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::livewire('/', 'home')->name('home');
Route::livewire('/products', 'product-index')->name('products');
Route::livewire('/products/menu/{menuId}', 'product-menu')->name('products.menu');
Route::livewire('/products/{id}', 'product-detail')->name('products.detail');
Route::livewire('/cart', 'cart')->name('cart');
Route::livewire('/history', 'history')->name('history');
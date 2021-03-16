<?php

namespace App\Http\Livewire;

use App\Menu;
use App\Product;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        return view('livewire.home', [
            'products' => Product::take(4)->get(),
            'menus' => Menu::all()
        ]);
    }
}

<?php

namespace App\Http\Livewire;

use App\Menu;
use App\Product;
use Livewire\Component;

class AdminDashboard extends Component
{
    public function hapus($id){
        Product::find($id)->delete();

        session()->flash('messaga', 'Makanan Berhasil Dihapus');
    }
    public function render()
    {
        return view('livewire.admin-dashboard', [
            'makanan' => Product::all(),
            'foodtype' => Menu::all()
        ]);
    }
}

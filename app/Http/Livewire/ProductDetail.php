<?php

namespace App\Http\Livewire;

use App\Pesanan;
use App\PesananDetail;
use App\Product;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class ProductDetail extends Component
{
    public $product, $jumlah_pesanan;
    public function mount($id){
        $productDetail = Product::find($id);

        if ($productDetail) {
            $this->product = $productDetail;
        }
    }

    public function addToCart(){
        $this->validate([
            'jumlah_pesanan' => 'required'
        ]);

        //Check user login
        if (!Auth::user()){
            return redirect()->route('login');
        }

        //Total harga
        $total_harga = $this->jumlah_pesanan*$this->product->harga;

        //user punya pesanan?
        $pesanan = Pesanan::where('user_id', Auth::user()->id)->where('status', 0)->first();

        //check if user have order
        if (empty($pesanan)) {
            
            Pesanan::create([
                'user_id' => Auth::user()->id,
                'total_harga' => $total_harga,
                'status' => 0,
                'kodeunik' => mt_rand(99, 100),
            ]);

            $pesanan = Pesanan::where('user_id', Auth::user()->id)->where('status', 0)->first();
            $pesanan->kode_pemesanan = 'FL-'.$pesanan->id;
            $pesanan->update();

        }
        else{
            $pesanan->total_harga = $pesanan->total_harga+$total_harga;
            $pesanan->update();
        }

        PesananDetail::create([
            'product_id' => $this->product->id,
            'pesanan_id' => $pesanan->id,
            'jumlah_pesanan' => $this->jumlah_pesanan,
            'total_harga' => $total_harga
        ]);

        $this->emit('addToCart');

        session()->flash('message', 'Added to Cart');

        return redirect()->back();
    }

    public function render()
    {
        return view('livewire.product-detail');
    }
}

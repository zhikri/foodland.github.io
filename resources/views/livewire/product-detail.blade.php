<div class="container">
    <div class="row mt-4 mb-2">
        <div class="col">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{route('home')}}" class="text-dark">Home</a></li>
                  <li class="breadcrumb-item"><a href="{{route('products')}}" class="text-dark">Food List</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Food Detail</li>
                </ol>
              </nav>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            @if(session()->has('message'))
            <div class="alert alert-success">
                {{session('message')}}
            </div>
            @endif
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="card border border-0 detail-card">
                <div class="card-body product-img">
                    <img src="{{url('assets/food')}}/{{$product->gambar}}" alt="gambar-menu" class="img-fluid">
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <h2>
                <strong>{{$product->nama}}</strong>
            </h2>
            <h4>
                Rp. {{number_format($product->harga)}}
                @if ($product->is_ready == 1)
                <span class="badge badge-success">Available <i class="fas fa-check"></i></span>
                @else
                <span class="badge badge-danger">Not Available <i class="fas fa-times"></i></span>
                @endif
            </h4>
            <hr>
            <div class="row">
                <form wire:submit.prevent="addToCart">
                <div class="col">
                    <table class="table">
                        <tr>
                            <td>Type</td>
                            <td>:</td>
                            <td>{{$product->menu->nama}}</td>
                        </tr>
                        <tr>
                            <td>Deskripsi</td>
                            <td>:</td>
                            <td>{{$product->deskripsi}}</td>
                        </tr>
                        <tr>
                            <td>Jumlah</td>
                            <td>:</td>
                            <td>
                                <input id="jumlah_pesanan" type="number" class="form-control @error('jumlah_pesanan') is-invalid @enderror" wire:model="jumlah_pesanan" value="{{ old('jumlah_pesanan') }}" required autocomplete="jumlah_pesanan" autofocus>

                                @error('jumlah_pesanan')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <button type="submit" class="btn btn-dark btn-block" @if ($product->is_ready !== 1)
                                    disabled
                                @endif><i class="fas fa-shopping-cart"></i> Masukkan ke Keranjang</button>
                            </td>
                        </tr>
                    </table>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="container">
    {{-- Banner --}}
    <div class="banner">
        <img src="{{url('assets/slider/banner.png')}}" alt="banner">
    </div>

    {{-- Menu --}}
    <section class="pilih-menu mt-4">
        <h3><strong>Pilih Menu</strong></h3>
        <div class="row mt-4">
            @foreach ($menus as $menu)
            <div class="col">
                <a href="{{route('products.menu', $menu->id)}}">
                    <div class="card shadow">
                        <div class="text-center">
                            <img src="{{url('assets/menu')}}/{{$menu->gambar}}" alt="gambar-menu" class="img-fluid">
                        </div>
                    </div>
                </a>
            </div> 
            @endforeach
        </div>
    </section>
    
    {{-- Popular Food --}}
    <section class="foods mt-5">
        <h3><strong>Popular Foods</strong>
            <a href="{{route('products')}}" class="btn btn-dark float-right">Explore More. . .</a>
        </h3>
            <div class="row mt-4">
            @foreach ($products as $product)
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <img src="{{url('assets/food')}}/{{$product->gambar}}" alt="gambar-menu" class="img-fluid">
                            <div class="row mt-2">
                                <div class="col-md-12">
                                    <h5>{{$product->nama}}</h5>
                                    <p>Rp. {{ number_format($product->harga)}}</p>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-12">
                                    <a href="{{route('products.detail', $product->id)}}" class="btn btn-dark btn-block">Detail</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            @endforeach
            </div>
    </section>

</div>

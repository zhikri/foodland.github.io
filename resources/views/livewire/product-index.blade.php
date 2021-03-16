<div class="container">
    <div class="row mb-2">
        <div class="col">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{route('home')}}" class="text-dark">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Food List</li>
                </ol>
              </nav>
        </div>
    </div>
   <div class="row">
       <div class="col-md-9">
        <h2><strong>{{$title}}</strong></h2>
       </div>
       <div class="col-md-3">
        <div class="input-group mb-3">
            <input wire:model="search" type="text" class="form-control border-right-0 border" placeholder="Search . . ." aria-label="Search" aria-describedby="Search">
            <div class="input-group-prepend">
                <span class="input-group-text border-left-0 border" id="basic-addon1">
                    <i class="fas fa-search"></i>
                </span>
            </div>
        </div>
       </div>
   </div>
    <section class="foods mb-5">
            <div class="row mt-4">
            @foreach ($products as $product)
                <div class="col-md-3 mb-3">
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
            <div class="row">
                <div class="col">
                    {{$products->links()}}
                </div>
            </div>
    </section>
</div>

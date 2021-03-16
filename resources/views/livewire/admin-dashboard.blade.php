<div class="container mt-2">
    <div class="container">
        <div class="row mt-4 mb-2">
            <div class="col">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item"><a href="{{route('home')}}" class="text-dark">Home</a></li>
                      <li class="breadcrumb-item active" aria-current="page">Foodland Admin</li>
                    </ol>
                  </nav>
            </div>
        </div>
    
        <div class="row">
            <div class="col-md-12">
                @if (session()->has('pesan'))
                <div class="alert alert-success">
                    {{session('pesan')}}
                </div>
                @endif
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <button class="btn btn-success btn-sm float-right">Add  <i class="fas fa-plus"></i></button>
            </div>
        </div>
    
        <div class="row mt-3">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <td>No.</td>
                                <td>Nama Makanan</td>
                                <td>Deskripsi Makanan</td>
                                <td>Gambar Makanan</td>
                                <td>Harga</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1 ?>
                            @forelse ($makanan as $food)
                            <tr>
                                <td>{{$no++}}</td>
                                <td>{{$food->nama}}</td>
                                <td>{{$food->deskripsi}}<strong></strong></td>
                                <td>
                                    <img src="{{url('assets/food')}}/{{$food->gambar}}" alt="gambar-menu" class="img-fluid" width="40" height="40">
                                </td>
                                <td>{{$food->harga}}</td>
                                <td>
                                    <i wire:click="" class="fas fa-trash text-danger"></i>
                                    <i wire:click="" class="fas fa-edit text-warning"></i>
                                </td>
                            </tr>
                            @empty
                            <tr>
                                <td colspan="7">Data Kosong</td>
                            </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
</div>

<div class="col-12 col-sm-12 col-md-4 col-lg-3 col-xl-3 mt-1">
    <div class="card">
        <div id="carousel{{ $product->id }}" class="carousel slide carousel-fade">
            @foreach($product->images as $image)
            <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                <img class="d-block w-100 card-img-top" src="{{ asset($image->path) }}" height="300">
            </div>
            @endforeach
            <a class="carousel-control-prev" href="#carousel{{ $product->id }}" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#carousel{{ $product->id }}" role="button" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <div class="card-body">
            <h4 class="text-right"><strong>${{ $product->precio }}</strong></h4>
            <h5 class="card-title">{{ $product->titulo }}</h5>
            <p class="card-text">{{ substr($product->descripcion, 0,75) }}<strong>...</strong></p>
            <p class="card-text"><strong>{{ $product->disponible }} Cupos Disponibles</strong></p>
            <a href="{{ route('products.show', ['product' => $product->id]) }}" class="btn btn-light active" style="background-color:#673AB7; color:white;" role="button" aria-pressed="true">
            Comprar Paquete
            </a>
        </div>
    </div>
</div>
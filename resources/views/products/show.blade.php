@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-12">
        <div class="card">
            <div id="carousel{{ $product->id }}" class="carousel slide carousel-fade">
                @foreach($product->images as $image)
                <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                    <img class="d-block w-100 card-img-top" src="{{ asset($image->path) }}" height="500">
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
                <h5 class="card-title"><strong>{{ $product->titulo }}</strong></h5>
                <p class="card-text">{{ $product->descripcion }}</p>
                <h5><strong>Tu plan Incluye:</strong></h5>
                @foreach($product->features as $feature)
                <p>- {{ $feature->caracteristica }}</p>
                @endforeach
            </div>
        </div>
        </div>
    </div>
</div>
@endsection

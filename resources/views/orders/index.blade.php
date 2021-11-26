@extends('layouts.app')

@section('content')
<div class="row ml-2 mr-2 mt-3 mb-2">
    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
        <h5><strong>Características de tu Plan.</strong></h5>
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
                <h5 class="card-title"><strong>{{ $product->titulo }}</strong></h5>
                <p class="card-text">{{ $product->descripcion }}</p>
                <h5><strong>Tu plan Incluye:</strong></h5>
                @foreach($product->features as $feature)
                <p>- {{ $feature->caracteristica }}</p>
                @endforeach
            </div>
        </div>
    </div>
    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
        <h5><strong>Por favor llena la siguiente información.</strong></h5>
        <div class="card">
            <div class="card-body">
            <form method="POST" action="{{ route('products.update', ['product' => $product->id]) }}">
            @method('PUT')
            @csrf
                <div class="form-row">
                    <div class="col-12">
                        <label>Nombre Completo</label>
                        <input type="text" class="form-control" name="contacto" placeholder="Por favor digite su nombre completo" required>
                    </div>
                </div>
                <div class="form-row py-1">
                    <div class="col-12">
                        <label>Correo Electrónico</label>
                        <input type="email" class="form-control" name="email" placeholder="Por favor digite su correo electronico" required>
                    </div>
                </div>
                <div class="form-row py-1">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <label>Numero de Contacto</label>
                        <input type="number" class="form-control" name="numero_contacto" placeholder="Celular o Fijo" required>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <label>Numero de Identificación</label>
                        <input type="text" class="form-control" name="identificacion" placeholder="Cedula, Nit o Pasaporte" required>
                    </div>
                </div>
                <div class="form-row py-1">
                    <div class="col-12">
                        <label>Seleccione un Método de Pago</label>
                        <ul class="list-group">
                            <li class="list-group-item d-inline">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="bancos" name="metodo_pago" value="bancos" class="custom-control-input">
                                <label class="custom-control-label" for="bancos">Bancos</label>
                            </div>
                            </li>
                            <li class="list-group-item">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="paypal" name="metodo_pago" value="paypal" class="custom-control-input">
                                <label class="custom-control-label" for="paypal">Paypal</label>
                            </div>
                            </li>
                            <li class="list-group-item">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="pse" name="metodo_pago" value="pse" class="custom-control-input">
                                <label class="custom-control-label" for="pse">PSE</label>
                            </div>
                            </li>
                            <li class="list-group-item">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="efecty" name="metodo_pago" value="efecty" class="custom-control-input">
                                <label class="custom-control-label" for="efecty">Efecty</label>
                            </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="form-row py-1">
                    <div class="col-12 text-right">
                        <button type="submit" class="btn btn-light active" style="background-color:#673AB7; color:white;">Confirmar Orden</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
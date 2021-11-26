@extends('layouts.app')
@section('content')
    <div class="row" style="background-color: #D2D0D0;">
        <div class="col-12 text-center align-self-end">
            <h1 class="display-4">VIAJA / DESCUBRE / DISFRUTA / VIVE</h1>
        </div>
    </div>
    @if (count($products) < 1)
    <div class="row mt-5">
        <div class="col-12 text-center">
            <h3>
            <strong>¡Lo Sentimos!</strong>
            Actualmente la plataforma no tiene paquetes disponibles, vuelva pronto.
            <div class="py-5">
                <i class="fas fa-tired fa-10x"></i>
            </div>
            </h3>
        </div>
    </div>
    @else
    <div class="row ml-1 mr-1 mb-4">
    @foreach ($products as $product)
        @include('components.product-card')
    @endforeach
    </div>
    @endempty
    <section class="mb-5 section-details">
            @include('sections.details')
        </section>
        <section class="mt-4 mb-5">
            @include('sections.contact')
        </section>
        <section class="section-categories">
            @include('sections.categories')
        </section>
        <footer class="section-footer">
            @include('sections.footer')
        </footer>
@endsection
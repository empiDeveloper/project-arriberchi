@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <form method="POST" action="{{ route('gestion.store') }}" enctype="multipart/form-data">
    @csrf
    <div class="row mb-3">
        <div class="col-12">
            <h5><strong>Información general del producto</strong></h5>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <label>Nombre de Producto</label>
            <input type="text" class="form-control" name="titulo" value="{{ old('titulo') }}" placeholder="Digite el nombre del producto" required>
        </div>
        <div class="col-md-4">
            <label>Precio</label>
            <input type="number" class="form-control" name="precio" value="{{ old('precio') }}" min="1.00" step="0.01" placeholder="Digite el precio del producto" required>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-md-4">
            <label>Estado</label>
            <select class="form-control" name="estado">
                <option value="">-- Seleccione --</option>
                <option {{ old('estado') == 'disponible' ? 'selected' : '' }} value="disponible">Disponible</option>
                <option {{ old('estado') == 'nodisponible' ? 'selected' : '' }} value="nodisponible">No Disponible</option>
            </select>
        </div>
        <div class="col-md-6">
            <label>Disponibilidad</label>
            <input type="number" class="form-control" name="disponible" min="0" value="{{ old('disponible') }}" placeholder="¿Cúantos cupos tiene para este producto?" required>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <label>Descripción</label>
            <textarea rows="5" class="form-control" name="descripcion" value="{{ old('descripcion') }}" placeholder="Digite la descripción del producto" required></textarea>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <label>Imagenes</label>
            <div class="custom-file">
                <input type="file" accept="image/*" name="images[]" class="custom-file-input" multiple>
                <label class="custom-file-label">Seleccione las imagenes del producto</label>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-12">
            <h5><strong>Características del producto</strong></h5>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
        @for($i = 0; $i < 10; $i++)
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1">{{ $i + 1 }}</span>
            </div>
            <input type="text" class="form-control" name="caracteristicas[]" aria-describedby="basic-addon1">
        </div>
        @endfor
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12 text-right">
            <button type="submit" class="btn btn-light" style="background-color:#673AB7; color:white;">Crear Producto</button>
        </div>
    </div>
    </form>
</div>
@endsection

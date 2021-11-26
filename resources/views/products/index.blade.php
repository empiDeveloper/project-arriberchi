@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <div class="row form-group">
        <div class="col-4">
            <h5 class="ml-5"><strong>Productos actualmente creados</strong></h5>
        </div>
        <div class="col-8 text-right">
            <a class="btn btn-light" href="{{ route('gestion.create') }}" style="background-color:#673AB7; color:white;">Crear Producto</a>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <table class="table table-bordered table-sm">
                <thead>
                    <tr class="text-center" style="background-color:#E0E0E0;">
                        <th>#</th>
                        <th>Producto</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                        <th>Estado</th>
                        <th width="5%">Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($products as $index => $product)
                    <tr>
                        <th class="text-center">{{ $index + 1 }}</th>
                        <td>{{ $product->titulo }}</td>
                        <td class="text-right"><strong>$</strong><span class="ml-1">{{ $product->precio }}</span></td>
                        <td class="text-center">{{ $product->disponible }}</td>
                        <td class="text-center">
                            @if ($product->estado === 'disponible')
                                <i class="fas fa-power-off fa-lg" style="color:green;" title="Disponible"></i>
                            @else
                                <i class="fas fa-power-off fa-lg" style="color:red;" title="No Disponible"></i>
                            @endif
                        </td>
                        <td class="text-center">
                        <div class="dropdown">
                            <a class="btn btn-secondary btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-cog fa-lg"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" style="cursor:pointer;">
                                        <i class="fas fa-eye fa-lg" title="Visualizar Producto"></i>
                                        <a class="ml-1" style="color:black;" href="{{ route('gestion.show', ['gestion' => $product->id]) }}">Visualizar</a>
                                    </li>
                                    <li class="list-group-item" style="cursor:pointer;">
                                        <i class="fas fa-edit fa-lg" style="color:blue;" title="Editar Producto"></i>
                                        <a class="ml-1" style="color:black;" href="{{ route('gestion.edit', ['gestion' => $product->id]) }}">Editar</a>
                                    </li>
                                    <form method="POST" action="{{ route('gestion.destroy', ['gestion' => $product->id]) }}">
                                    @csrf
                                    @method('DELETE')
                                    <li class="list-group-item" style="cursor:pointer;">
                                        <button type="submit" class="btn btn-link btn-sm" style="color:black;">
                                        <i class="fas fa-trash-alt fa-lg" style="color:red;" title="Eliminar Producto"></i>
                                            Eliminar
                                        </button>
                                    </li>
                                    </form>
                                </ul>
                            </div>
                        </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

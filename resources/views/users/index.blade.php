@extends('layouts.app')
@section('content')
<div class="container mt-4">
    <div class="row">
        <div class="col-12">
            <h5 class="ml-5"><strong>Usuarios actualmente registrados</strong></h5>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-bordered table-sm">
                    <thead>
                        <tr class="text-center">
                            <th>#</th>
                            <th>Nombre</th>
                            <th>Correo Electrónico</th>
                            <th>Fecha Registrado</th>
                            <th>Nivel de Usuario</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $index => $user)
                        <tr>
                            <th class="text-center">{{ $index + 1 }}</th>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td class="text-center">{{ $user->created_at }}</td>
                            <td></td>
                            <td class="text-center">
                                <button type="button" class="btn btn-warning btn-sm">Bloquear</button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

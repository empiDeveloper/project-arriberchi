@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Panel de Administración</div>
                <div class="card-body">
                    <div class="list-group">
                        <a class="list-group-item" href="{{ route('gestion.index') }}">Gestionar Productos</a>
                        <a class="list-group-item" href="{{ route('users.index') }}">Gestionar Usuarios</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

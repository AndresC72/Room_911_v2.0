@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Show User</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('users.index') }}"> Back</a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Name Employee:</strong>
            {{ $user->name }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Email Employee:</strong>
            {{ $user->email }}
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Role Employee:</strong>
            @if(!empty($user->getRoleNames()))
                @foreach($user->getRoleNames() as $v)
                <label class="badge bg-secondary text-white">{{ $v }}</label>
                @endforeach
            @endif
        </div>
    </div>
</div>

<!-- Filtros por fecha -->
<div class="row mt-4">
    <div class="col-lg-12">
        <h3>Filter Login History</h3>
        <form method="GET" action="{{ route('users.show', $user->id) }}" class="row g-3">
            <div class="col-md-4">
                <label for="start_date" class="form-label">From:</label>
                <input type="date" name="start_date" class="form-control" value="{{ $startDate }}">
            </div>
            <div class="col-md-4">
                <label for="end_date" class="form-label">To:</label>
                <input type="date" name="end_date" class="form-control" value="{{ $endDate }}">
            </div>
            <div class="col-md-4 d-flex align-items-end">
                <button type="submit" class="btn btn-primary">Filter</button>
            </div>
        </form>
        <!-- Botón para descargar PDF -->
        <div class="row mt-4">
            <div class="col-lg-12">
                <a href="{{ route('users.logins.pdf', $user->id) }}?start_date={{ request('start_date') }}&end_date={{ request('end_date') }}" 
                class="btn btn-danger">
                    Download PDF
                </a>
            </div>
        </div>
            </div>
        </div>

<!-- Historial de inicio de sesión -->
<div class="row mt-4">
    <div class="col-lg-12">
        <h3>History of logins</h3>
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Date and Hour</th>
                    <th>IP Address</th>
                </tr>
            </thead>
            <tbody>
                @forelse($logins as $login)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $login->login_at }}</td>
                        <td>{{ $login->ip_address }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="3" class="text-center">No login records found.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection
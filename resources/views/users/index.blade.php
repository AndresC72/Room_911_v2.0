@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-right">
            <a class="btn btn-success mb-2" href="{{ route('users.create') }}"><i class="fa fa-plus"></i> Create New Employee</a>
        </div>
        <div class="pull-left" style="margin-top: 20px">
            <h2>Import Employees</h2>
        </div>
        <div class="pull-right">
            <form action="{{ route('importCSV') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="file" name="file" class="form-control">
                <button type="submit" class="btn btn-info mb-2" style="margin-top: 10px" ><i class="fa fa-folder"></i><br>Import CSV File</button>
            </form>
        </div>
    </div>
</div>

<!-- Formulario de búsqueda -->
<form method="GET" action="{{ route('users.index') }}" class="row g-3 mb-4">
    <div class="col-md-2">
        <label for="id" class="form-label">ID:</label>
        <input type="text" name="id" class="form-control" value="{{ request('id') }}">
    </div>
    <div class="col-md-3">
        <label for="name" class="form-label">Name:</label>
        <input type="text" name="name" class="form-control" value="{{ request('name') }}">
    </div>
    <div class="col-md-3">
        <label for="email" class="form-label">Email:</label>
        <input type="text" name="email" class="form-control" value="{{ request('email') }}">
    </div>
    <div class="col-md-3">
        <label for="role" class="form-label">Departament:</label>
        <select name="role" class="form-control">
            <option value="">All Departaments</option>
            @foreach($roles as $role)
                <option value="{{ $role }}" {{ request('role') == $role ? 'selected' : '' }}>{{ $role }}</option>
            @endforeach
        </select>
    </div>
    <div class="col-md-1 d-flex align-items-end">
        <button type="submit" class="btn btn-primary">Search</button>
    </div>
</form>

<!-- Tabla de usuarios -->
<table class="table table-bordered">
   <tr>
       <th>Employee ID</th>
       <th>Name</th>
       <th>Email</th>
       <th>Departament</th>
       <th width="280px">Action</th>
   </tr>
   @foreach ($data as $key => $user)
    <tr>
        <td>{{ $user->id }}</td>
        <td>{{ $user->name }}</td>
        <td>{{ $user->email }}</td>
        <td>
            @if(!empty($user->getRoleNames()))
                @foreach($user->getRoleNames() as $v)
                    @php
                        $roleColors = [
                            'Disable' => 'bg-danger',
                            'Admin_Room_911' => 'bg-primary',
                            'Departament1' => 'bg-warning',
                            'Departament2' => 'bg-info',
                            'Guest' => 'bg-secondary',
                        ];
                        $badgeClass = $roleColors[$v] ?? 'bg-dark';
                    @endphp
                    <label class="badge {{ $badgeClass }}">{{ $v }}</label>
                @endforeach
            @endif
        </td>
        <td>
             <a class="btn btn-warning btn-sm" href="{{ route('users.show',$user->id) }}"><i class="fa-solid fa-file"></i> History </a>
             @can('role-edit')
             <a class="btn btn-primary btn-sm" href="{{ route('users.edit',$user->id) }}"><i class="fa-solid fa-history"></i> Update</a>
             @endcan
             <form method="POST" action="{{ route('users.disable', $user->id) }}" style="display:inline">
                @csrf
                @method('POST')
                <button type="submit" class="btn btn-danger btn-sm">
                    <i class="fa-solid fa-user-slash"></i> Disable
                </button>
            </form> 
             @can('role-delete')
             <form method="POST" action="{{ route('users.destroy', $user->id) }}" style="margin-top: 10px;">
                  @csrf
                  @method('DELETE')
                  <button type="submit" class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i> Delete</button>
              </form>
             @endcan
        </td>
    </tr>
 @endforeach
</table>

{!! $data->links('pagination::bootstrap-5') !!}

<p class="text-center text-primary"><small>ROOM_911</small></p>
@endsection
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">User</div>
                <div class="card-body">
</div>
<table class="table">
  <thead>
    <tr>
    <th scope="col">Name</th>
    <th scope="col">Email</th>
    <th scope="col">Actions</th>
    </tr>
  </thead>

  <tbody>
  
     @foreach($users as $user)
    <tr>
      <td>{{ $user->name }}</td>
      <td>{{ $user->email }}</td>
      <td>{{ implode(', ', $user->roles()->get()->pluck('name')->toArray()) }}</td>
      <td>
      <a class="btn btn-primary" href="{{route('admin.users.edit', $user->id)}}">edit </a>
      <form class="btn btn-danger" action="{{route('admin.users.destroy', $user->id)}}" method="post">
       @method('DELETE')

       @csrf
      <input type="submit" value="Delete" class="btn btn-danger">
      </form>

      </td>
      </tr>
      @endforeach
                    
            
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

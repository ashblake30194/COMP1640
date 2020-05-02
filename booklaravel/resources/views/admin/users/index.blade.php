@extends('admin/inc/admin')

@section('content')
<div class="col-md-6">
<h1>User Management</h1>
</div>
<div class="col-md-6">
<a href="{{route('admin.users.create')}}" class="btn btn-primary pull-left">
<!-- <a href="/admin/book/addBook" class="btn btn-primary pull-left"> -->
<i class="fa fa-pencil">Add User</i>
</a>
</div>

<table class="table">
  <thead>
    <tr>
    <th scope="col">Name</th>
    <th scope="col">Email</th>
    <th scope="col">Roles</th>
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
      <a class="btn btn-primary" href="{{route('admin.users.edit', $user->id)}}">Delete </a>
      <form class="btn btn-danger" action="{{route('admin.users.destroy', $user->id)}}" method="post">
       @method('DELETE')

       @csrf
      <input type="submit" value="Delete" class="btn btn-danger" onclick="return confirm('Are you sure ?')">
      </form>

      </td>
      </tr>
      @endforeach
      </table>
@endsection

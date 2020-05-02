@extends('layouts/main')

@section('content')
<div class="col-md-6">
<h1>Groups</h1>
</div>
<div class="col-md-6">
<a href="{{route('group.create')}}" class="btn btn-primary pull-left">
<!-- <a href="/admin/book/addBook" class="btn btn-primary pull-left"> -->
<i class="fa fa-pencil">Add Group</i>
</a>
</div>

<table class="table">
  <thead>
    <tr>
    <th scope="col">Classroom</th>
    <th scope="col">Student ID</th>
    <th scope="col">Student Name</th>
    <th scope="col">Teacher ID</th>
    <th scope="col">Teacher Name</th>
    <th scope="col">Actions</th>
    </tr>
  </thead>

  <tbody>
  
     @foreach($groups as $group)
    <tr>
        <td>{{ $group->classroom }}</td>
        <td>{{ $group->student_id }}</td>
        <td>{{ $group->student_name }}</td>
        <td>{{ $group->teacher_id }}</td>
        <td>{{ $group->teacher_name }}</td>
      <td>
      <form class="btn btn-danger" action="{{route('group.destroy', $group->id)}}" method="post">
       @method('DELETE')

       @csrf
      <input type="submit" value="Delete" class="btn btn-danger" onclick="return confirm('Are you sure ?')">
      </form>

      </td>
      </tr>
      @endforeach
      </table>
@endsection

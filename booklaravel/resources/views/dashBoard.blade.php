@extends('layouts.main')

@section('content')

  <table class="table">
  <thead>
    <tr>
    <th scope="col">Id</th>
    <th scope="col">Class</th>
    <th scope="col">Create At</th>
    <th scope="col">Teacher Name</th>
    </tr>
  </thead>

  <tbody>

  @foreach($classroom as $key => $class)
  <tr>
        <td>{{ $key+1 }}</td>
        <td>{{ $class->classroom }}</td>
        <td>{{ $class->created_at }}</td>
        <td>{{ $class->teacher_name }}</td>
      </tr>
  @endforeach
  
      </table>
        </form>
  
      </div>
    </div>
</div>
@endsection
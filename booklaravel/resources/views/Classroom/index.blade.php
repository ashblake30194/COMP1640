@extends('layouts.main')
@section('content')
<div class="col-md-6">
<h1>Classrooms</h1>
</div>
<div class="col-md-6">
<a href="{{route('classroom.create')}}" class="btn btn-primary pull-left">
<i class="fa fa-pencil">Add classroom</i>
</a>
</div>
    <table class="table">
  <thead>
    <tr>
    <th scope="col">No.</th>
    <th scope="col">Classroom</th>
    <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  
  @foreach($classrooms as $classroom)
    <tr>
    <th scope="row">{{$classroom->id}}</th>
      <td>{{$classroom->classroom}}</td>
      <td>
      <form class ="pull-left" action="{{route('classroom.destroy',$classroom->id)}}" method="post">
      @method('DELETE')

        @csrf
      <input type="submit" value="Delete" class="btn btn-danger" onclick="return confirm('Are you sure ?')">
      </form>
      </td>
      </tr>
   @endforeach
    
  </tbody>
</table>
@endsection

@section('js')
<script>
$('.table').DataTable();
</script>
@endsection
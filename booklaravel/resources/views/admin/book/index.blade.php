@extends('admin/inc/admin')
@section('content')

<div class="col-md-6">
<h1>Products</h1>
</div>
<div class="col-md-6">
<a href="{{route('admin.book.create')}}" class="btn btn-primary pull-left">
<!-- <a href="/admin/book/addBook" class="btn btn-primary pull-left"> -->
<i class="fa fa-pencil">Add Book</i>
</a>
</div>
<table class="table">
  <thead>
    <tr>
    <th scope="col">No.</th>
    <th scope="col">Book</th>
    <th scope="col">Author</th>
    <th scope="col">Category</th>
    <th scope="col">Info</th>
    <th scope="col">Actions</th>
    </tr>
  </thead>

  <tbody>
  
    @foreach($books as $book)
    <tr>
    <th scope="row">{{$book->id}}</th>
      <td>{{$book->title}}</td>
      <td>{{$book->author}}</td>
      <td>{{$book->author}}</td>
      <td>{{$book->info}}</td>
      <td>

      <!--if controller using resource route-->
      <a class="btn btn-primary" href="{{route('admin.book.show', $book->id)}}">show </a>
      <a class="btn btn-primary" href="{{route('admin.book.edit', $book->id)}}">edit </a>

      <form class="btn btn-danger" action="{{route('admin.book.destroy', $book->id)}}" method="post">
       @method('DELETE')

       @csrf
      <input type="submit" value="Delete" class="btn btn-danger">
      </form>
      </td>
      </tr>
    @endforeach
    
  </tbody>
</table>

@endsection

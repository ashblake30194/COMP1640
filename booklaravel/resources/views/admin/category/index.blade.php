@extends('admin/inc/admin')
@section('content')
<div class="col-md-6">
<h1>Categories</h1>
</div>
<div class="col-md-6">
<a href="{{route('admin.category.create')}}" class="btn btn-primary pull-left">
<i class="fa fa-pencil">Add Category</i>
</a>
</div>
    <table class="table">
  <thead>
    <tr>
    <th scope="col">No.</th>
    <th scope="col">Category</th>
    <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  
  @foreach($categories as $category)
    <tr>
    <th scope="row">{{$category->id}}</th>
      <td>{{$category->name}}</td>
      <td>
      <form class ="pull-left" action="{{route('admin.category.destroy',$category->id)}}" method="post">
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
@extends('../admin/inc/admin')
@section('content')

<a href="{{route('admin.book.index')}}" class="btn btn-light"><i class="fa fa-backward"></i>Back</a>
<br>

<h2>Edit Product</h2>
<form action ="/admin/book/{{$book->id}}" method="post">

@method('PATCH')

<div class="form-group">
            <label for="title">Title: <sup>*</sup></label>
            <input type="text" name="title" class="form-control form-control-lg" value="{{$book->title}}">
            </div>

            <div class="form-group">
            <label for="name">Author's Name: <sup>*</sup></label>
            <input type="text" name="name" class="form-control form-control-lg" value="{{$book->author}}">
            </div>
            
            <div class="form-group">
            <select class="browser-default custom-select custom-select-lg mb-3" name="category">
            <option disabled selected> {{$book->cat_name}}</option>

            @foreach($categories as $category)
            <option value="{{$category->catName}}">{{$category->catName}}</option>  
            @endforeach

            </select>
            </div>
            <div class="form-group">
            <label for="info">Description: <sup>*</sup></label>
            <input type="text" name="info" class="form-control form-control-lg" value="{{$book->info}}">
            </div>

            @csrf
            <input type="submit" class="btn btn-success" value="submit">
</div>
</form>
</div>

@endsection

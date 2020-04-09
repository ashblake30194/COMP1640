@extends('admin/inc/admin')
@section('content')

<a href="{{route('admin.category.index')}}" class="btn btn-light"><i class="fa fa-backward"></i>Back</a>
<br>

<h2>Add Product</h2>
<form action ="/admin/category" method="post">


<div class="form-group">

            <div class="form-group">
            <label for="name">Category: <sup>*</sup></label>
            <input type="text" name="category" class="form-control form-control-lg">
            </div>

            @csrf
            <input type="submit" class="btn btn-success" value="submit">
</div>
</form>
</div>

@endsection

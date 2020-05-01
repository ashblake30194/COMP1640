@extends('layouts.main')
@section('content')

<a href="{{route('classroom.index')}}" class="btn btn-light"><i class="fa fa-backward"></i>Back</a>
<br>

<h2>Add Product</h2>
<form action ="/classroom" method="post">


<div class="form-group">

            <div class="form-group">
            <label for="classroom">Classroom: <sup>*</sup></label>
            <input type="text" name="classroom" class="form-control form-control-lg">
            </div>

            @csrf
            <input type="submit" class="btn btn-success" value="submit">
</div>
</form>
</div>

@endsection
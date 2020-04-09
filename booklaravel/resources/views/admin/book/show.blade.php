@extends('admin/inc/admin')
@section('content')

<a href="{{route('admin.book.index')}}" class="btn btn-light"><i class="fa fa-backward"></i>Back</a>
<br>

<h1>{{$book->title}}</h1>
<div class="bg-secondary text-white p-2 mb-3">
written by{{$book->author}}
</div>
<h3>Description</h3>
<p>{{$book->info}}</p>

@endsection
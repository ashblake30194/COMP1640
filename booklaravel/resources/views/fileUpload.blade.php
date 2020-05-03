@extends('layouts.main')
<style>
    .boldRed {
        color:red;
        font-weight:bold;
    }
</style>
@section('content')
<div class="container">
   
    <div class="panel panel-primary">
      <div class="panel-heading"><h2>Upload File</h2></div>
      <div class="panel-body">
   
        @if ($message = Session::get('success'))
        <div class="alert alert-success alert-block">
            <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>{{ $message }}</strong>
        </div>
        @endif
  
        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
  
        <form action="{{ route('file.upload.post') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
        <h5>Choose Classes To Upload File</h5>
        <select class="browser-default custom-select custom-select-lg mb-3" name="class_id">           
            @foreach($class as $value)
            <option name="class_{{$value->id}}" value="{{$value->id}}">{{$value->classroom}}</option>
            @endforeach
        </select>
    </div>
            <div class="row">
                <div class="">
                    <input type="file" name="file" class="">
                </div>
   
                <div class="">
                    <button type="submit" class="btn btn-success">Upload</button>
                </div>
            </div>
            <br>
            <p class="bg-warning">Font Red Color are files Teacher Upload</p>
  <table class="table">
  <thead>
    <tr>
    <th scope="col">Id</th>
    <th scope="col">Name</th>
    <th scope="col">Size</th>
    <th scope="col">Class</th>
    <th scope="col">Create Date</th>
    <th scope="col">Action</th>
    <th scope="col"></th>
    </tr>
  </thead>

  <tbody>

  @foreach($fileStudent as $key => $file)
  <tr>
        <td>{{ $file->id }}</td>
        <td>{{ $file->name }}</td>
        <td>{{ $file->size }}</td>
        <td>{{ $file->classroom }}</td>
        <td>{{ $file->created_at }}</td>
      <td>
      <a href="storage/upload/{{$file->name}}" download="{{$file->name}}">
      <button type="button" value="" class="btn btn-primary">
      <i class="fa fa-download">
      Download
      </i>
      </button>
      </a>
      </td>
      </tr>
  @endforeach
  @foreach($fileTeacher as $key => $file)
  @if($file->count() != 0)
    <tr>
        <td @if ($file[0]->role_id == 4) class="boldRed" @endif>{{ $file[0]->id }}</td>
        <td @if ($file[0]->role_id == 4) class="boldRed" @endif>{{ $file[0]->name }}</td>
        <td @if ($file[0]->role_id == 4) class="boldRed" @endif>{{ $file[0]->size }}</td>
        <td @if ($file[0]->role_id == 4) class="boldRed" @endif>{{ $file[0]->classroom }}</td>
        <td @if ($file[0]->role_id == 4) class="boldRed" @endif>{{ $file[0]->created_at }}</td>
      <td>
      <a href="storage/upload/{{$file[0]->name}}" download="{{$file[0]->name}}">
      <button type="button" value="" class="btn btn-primary">
      <i class="fa fa-download" @if ($file[0]->role_id == 4) style="color:red" @endif>
      Download
      </i>
      </button>
      </a>
      </td>
      </tr>
    @endif
      @endforeach
    @foreach($files as $key => $file)
    <tr>
        <td @if ($file->role_id == 4) class="boldRed" @endif>{{ $file->id }}</td>
        <td @if ($file->role_id == 4) class="boldRed" @endif>{{ $file->name }}</td>
        <td @if ($file->role_id == 4) class="boldRed" @endif>{{ $file->size }}</td>
        <td @if ($file->role_id == 4) class="boldRed" @endif>{{ $file->classroom }}</td>
        <td @if ($file->role_id == 4) class="boldRed" @endif>{{ $file->created_at }}</td>
      <td>
      <a href="storage/upload/{{$file->name}}" download="{{$file->name}}">
      <button type="button" value="" class="btn btn-primary">
      <i class="fa fa-download" @if ($file->role_id == 4) style="color:red" @endif>
      Download
      </i>
      </button>
      </a>
      </td>
      </tr>
      @endforeach
      </table>
        </form>
  
      </div>
    </div>
</div>
@endsection
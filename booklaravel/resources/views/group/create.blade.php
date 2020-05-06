@extends('layouts/main')
@section('content')

<a href="{{route('group.index')}}" class="btn btn-light"><i class="fa fa-backward"></i>Back</a>
<br>
@method('PATCH')
<h2>Add Groups</h2>
<form action ="/group" method="post">
    <div class="form-group">
        <h5>Classroom</h5>
        <select class="browser-default custom-select custom-select-lg mb-3" name="classroom_id">           
            @foreach($classrooms as $classroom)
            <option value="{{$classroom->id}}">{{$classroom->classroom}}</option>
            @endforeach
        </select>
    </div>

    @foreach($users as $user)
    @endforeach
    <div class="form-group">
        <h5>Students</h5>
        <select class="browser-default custom-select custom-select-lg mb-3" name="student_id[]" multiple>
            @foreach($users as $user)
                @if($user->roles->pluck('name')->first() == "student")
                    <option value="{{$user->id}}">{{$user->name}}</option>
                @endif
            @endforeach
        </select>
    </div>

    <div class="form-group">
        <h5>Teachers</h5>
            <select class="browser-default custom-select custom-select-lg mb-3" name="teacher_id">
                @foreach($users as $user)
                    @if($user->roles->pluck('name')->first() == "teacher")
                        <option value="{{$user->id}}">{{$user->name}}</option>
                    @endif
                @endforeach
        </select>
    </div>
    @csrf
    <input type="submit" class="btn btn-success" value="submit">
</form>

@endsection

<script>
$(document).ready(function () {

});
</script>
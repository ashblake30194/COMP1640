@extends('layouts/main')
@section('content')

<a href="{{route('group.index')}}" class="btn btn-light"><i class="fa fa-backward"></i>Back</a>
<br>
@method('PATCH')
<h2>Add Product</h2>
<form action ="/group" method="post">


                <div class="wrap-input100 validate-input">
                    <input id="group_id" type="text" name="group_id" placeholder="Group ID">
                    <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                </div>


            <div class="form-group">
            <h5>If group exist</h5>
            <select class="browser-default custom-select custom-select-lg mb-3" name="group_id">           
            @foreach($groups as $group)
            <option value="{{$group->group_id}}">{{$group->group_id}}</option>
            @endforeach
            </select>
            </div>

        @foreach($users as $user)
            
            @endforeach
            <div class="form-group">
            <h5>Students</h5>
            <select class="browser-default custom-select custom-select-lg mb-3" name="student_id">           
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
</div>
</form>
</div>

@endsection

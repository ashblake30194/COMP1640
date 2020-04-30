@extends('admin/inc/admin')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">
                    <a href="{{route('admin.users.index')}}" class="btn btn-light"><i class="fa fa-backward"></i>Back</a>
                    <form action="{{ route('admin.users.update', $user->id) }}" method='post'>
                        <p>User Name: <strong>{{$user->name}}</strong></p>
                        <p>User Email: <strong>{{$user->email}}</strong></p>
                        @csrf
                        @method('PATCH')
                        <label for=""> Role: </label>
                        @foreach($roles as $role)
                            <div class="form-check">  <input type="checkbox" name="roles[]" value="{{$role->id}}"
                            @if($user->roles->pluck('id')->contains($role->id)) checked @endif>
                                <label>{{$role->name}}</label><br>
                            </div>
                        @endforeach
                            <input type="submit" class="btn btn-success" value="Update"></input>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

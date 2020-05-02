@extends('admin/inc/admin')

@section('content')
<div class="col-md-6">
<h1>User Management</h1>
</div>
<div class="col-md-6">
<a href="{{route('admin.users.create')}}" class="btn btn-primary pull-left">
<!-- <a href="/admin/book/addBook" class="btn btn-primary pull-left"> -->
<i class="fa fa-pencil">Add User</i>
</a>
</div>

<table class="table">
  <thead>
    <tr>
    <th scope="col">Name</th>
    <th scope="col">Email</th>
    <th scope="col">Roles</th>
    <th scope="col">Actions</th>
    </tr>
  </thead>

  <tbody>
  
     @foreach($users as $user)
    <tr>
      <td>{{ $user->name }}</td>
      <td>{{ $user->email }}</td>
      <td>{{ implode(', ', $user->roles()->get()->pluck('name')->toArray()) }}</td>
      <td>
      <a class="btn btn-primary" href="{{route('admin.users.edit', $user->id)}}">edit </a>
      <button class="btn btn-danger" data-userid="{{$user->id}}" data-toggle="modal" data-target="#delete">Delete </button>

      </td>
      </tr>
      @endforeach
      </table>

<div class="modal" tabindex="-1" role="dialog" id="delete">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form class="btn btn-danger" action="{{route('admin.users.destroy', $user->id)}}" method="post">
       @method('DELETE')
       @csrf
       <div class="modal-body">
        <p>Are You Sure?</p>
        <input type="text" value="" id="user_id" name="user_id">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">YES DELETE</button>
      </div>
      </form>
    </div>
  </div>
</div>
@endsection
@section('js')
<script>
$('#delete').on('show.bs.modal', function(event){
  var button = $(event.relatedTarget)
  var user_id = button.data('userid')
  var modal = $(this)
  modal.find('.modal-body #user_id').val(user_id);
})
</script>

@endsection
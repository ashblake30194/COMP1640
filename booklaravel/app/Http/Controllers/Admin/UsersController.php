<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\User;
use App\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    public function index()
    {
        $users = User::all();
        return view('admin/users/index', compact('users'));
    }

    public function create()
    {
        $roles = Role::all();
        return view('admin.users.create', compact('roles'));
    }

    public function store(Request $request)
    {
        $this->validator($request->all())->validate();
        //register new user
        $user =User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        //Attach role: Staff
        $user->roles()->attach($request->role);
        return redirect('admin/users');
    }

    public function edit(User $user)
    {
        $roles = \App\Role::all();
        return view('admin/users/edit', compact('user','roles'));
    }


    public function update(Request $request, User $user)
    {
        //
        $user->roles()->sync($request->roles);
        return redirect('admin/users');
    }

    public function destroy(Request $request, User $user)
    {   
        $delete=$request->all();
        $user=User::findOrfail($request->user_id);
        $user->roles()->detach();
        $user->delete();
        return redirect()->route('admin.users.index');
    }
}
